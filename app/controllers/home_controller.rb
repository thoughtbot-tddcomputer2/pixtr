class HomeController < ApplicationController
  def index
    if current_user
      dashboard
      render :action => "dashboard"
    end
    all_galleries
  end
  
  def dashboard
    @galleries = current_user.galleries
  end
end