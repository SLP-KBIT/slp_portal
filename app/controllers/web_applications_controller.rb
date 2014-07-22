class WebApplicationsController < ApplicationController
  def index
    @web_applications = WebApplication.all.page params[:page]
  end
end
