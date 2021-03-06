class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_resource
  def set_resource
    @resource = User.new
  end

  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end

# heroku config:set DOMAIN=www.trabby.xyz
