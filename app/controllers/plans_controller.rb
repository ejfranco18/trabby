class PlansController < ApplicationController
  def show
    @plan = Plan.find(params[:id])

    # Do this for every day of the plan -> The time is the DT variable
    city = @plan.city.name

    @weather = {}

    (@plan.start_date..@plan.end_date).each do |date|
      dt = date.to_time.to_i
      url = "https://api.openweathermap.org/data/2.5/weather?q=#{city}&dt=#{dt}&appid=#{ENV['OPENWEATHER_KEY']}"

      response = RequestCache.get(url)

      data = {
        img: "http://openweathermap.org/img/w/#{response['weather'][0]['icon']}.png",
        temp: response['weather'][0]['description']
      }

      @weather[date] = data
    end

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
    if @plan.save
      ActivityGenerator.new(@plan).select_activities
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
