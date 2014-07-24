class WebApplicationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @web_applications = WebApplication.all.page params[:page]
  end
end
