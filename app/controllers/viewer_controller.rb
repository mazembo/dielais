class ViewerController < ApplicationController

  def index
  	@services = Service.find(:all)
  end

  def show
  end
end
