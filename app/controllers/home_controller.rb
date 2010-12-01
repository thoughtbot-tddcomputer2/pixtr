class HomeController < ApplicationController
  def index
    @galleries = current_user.galleries
  end
end