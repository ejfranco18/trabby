class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @cities = City.where.not(name: 'default').reorder('name ASC')
  end
end
