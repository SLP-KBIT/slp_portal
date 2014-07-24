class ServersController < ApplicationController
  before_action :authenticate_user!

  def index
    @servers = Server.search( params[:keyword] ).page params[:page]
  end
end
