class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_page_attributes

  def set_page_attributes
    @page = OpenStruct.new({:controller => params[:controller], :action => params[:action]})
  end
end
