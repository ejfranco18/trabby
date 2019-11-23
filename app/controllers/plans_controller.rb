class PlansController < ApplicationController
  def show
    @plan = Plan.find(params[:id])
    @resource = User.new
  end

  def new
    @plan = Plan.new
    @resource = User.new
  end

  def create
    @resource = User.new
    @plan = Plan.new(plan_params)
    @plan.user = current_user
    if @plan.save!
      ActivityGenerator.new(@plan).create_activities
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.update(plan_params)
    redirect_to plan_path(@plan)
  end

  private

  def plan_params
    params.require(:plan).permit(:start_date, :end_date, :user_id, :city_id, search_items: [])
  end
end
