class Admin::ServersController < ApplicationController
  before_action :load_server, except: %w( index new create )
  before_action :authenticate_user!
  before_action :admin_user!

  def index
    @servers = Server.all
  end

  def new
    render :show_modal_form
  end

  def create
    @server = Server.new( server_params )
    @result = @server.save
    @server = nil unless @result
    flash[:notice] = '登録しました。' if @result
  end

  def edit
    render :show_modal_form
  end

  def update
    @result = @server.update( server_params )
    @server = nil unless @result
    flash[:notice] = '更新しました。' if @result
  end

  def delete
    render :show_modal_delete
  end

  def destroy
    @result = @server.destroy
    @server = nil unless @result
    flash[:notice] = '削除しました。' if @result
    flash[:alert] = '削除できませんでした。' unless @result
    render :reload
  end

  private

  def load_server
    @server = Server.id_is( params[:id] ) if params[:id]
  end

  def server_params
    params.require( :server ).permit( :name, :description, :ip_address, :static_ip_flag, :name_resolution_flag, :outside_open_ports )
  end
end
