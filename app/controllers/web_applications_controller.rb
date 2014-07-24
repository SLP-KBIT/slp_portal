class WebApplicationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @web_applications = WebApplication.search( params[:keyword] ).page params[:page]
  end
end
