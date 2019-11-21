class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @cities = City.all
    @imagen = helpers.asset_url('loading.gif')
  end
end
