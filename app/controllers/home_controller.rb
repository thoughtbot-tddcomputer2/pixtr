class HomeController < ApplicationController
  def index
    if current_user
      dashboard
      render :action => "dashboard"
    end
    @galleries = Gallery.all
  end
  
  def dashboard
    @galleries = current_user.galleries
  end
end