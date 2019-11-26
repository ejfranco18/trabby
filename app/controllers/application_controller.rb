class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :resource
  def resource
    @resource = User.new
  end

end
