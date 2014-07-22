class Admin::WebApplicationsController < ApplicationController
  before_action :load_web_application, except: %w( index new create )

  def index
    @web_applications = WebApplication.all.page params[:page]
  end

  def new
    render :show_modal_form
  end

  def create
    @web_application = WebApplication.new( web_application_params )
    @result = @web_application.save
    @web_application = nil unless @result
    flash[:notice] = '登録しました。' if @result
  end

  def edit
    render :show_modal_form
  end

  def update
    @result = @web_application.update( web_application_params )
    @web_application = nil unless @result
    flash[:notice] = '更新しました。' if @result
  end

  def delete
    render :show_modal_delete
  end

  def destroy
    @result = @web_application.destroy
    @web_application = nil unless @result
    flash[:notice] = '削除しました。' if @result
    flash[:alert] = '削除できませんでした。' unless @result
    render :reload
  end

  private

  def load_web_application
    @web_application = WebApplication.id_is( params[:id] ) if params[:id]
  end

  def web_application_params
    params.require( :web_application ).permit( :name, :url, :description )
  end
end
