class ApplicationController < ActionController::Base
  include Clearance::Authentication
  protect_from_forgery
  
  def all_galleries
    @galleries = Gallery.all
  end
end