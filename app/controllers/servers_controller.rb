class ServersController < ApplicationController
  before_action :authenticate_user!

  def index
    @servers = Server.all.page params[:page]
  end
end
