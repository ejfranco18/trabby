class UsersController < ApplicationController
  def show
    @resource = User.new
    @user = User.find(params[:id])
    @categories = []
    @user.preference[:category_ids].each do |category|
      @categories << Category.find(category).category
    end

    @available_categories = Category.all

    @v = "20190425"

    @category_json = {}
    @categories.each do |category|
      #Location fixed
      id = Category.where(category: category).first.foursquare_category_id
      url = "https://api.foursquare.com/v2/venues/explore?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}&limit=10&categoryId=#{id}&ll=40.4170267569777,-3.703442763596807"
      response = RequestCache.get(url)
      @category_json[category] = response
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    end
  end

  private

  def user_params
    params.require(:user).permit(preference_attributes: { category_ids: [] })
  end
end
