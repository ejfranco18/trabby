class PlansController < ApplicationController

  def index
    @user = current_user
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user = current_user
    (@plan.start_date..@plan.end_date).each do |date|
      @plan.plan_days.build(date: date)
    end

    if @plan.save
      ActivityGenerator.create(@plan, current_user)
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
    params.require(:plan).permit(:start_date, :end_date, :user_id, :city_id, category_ids: [])
  end
end
