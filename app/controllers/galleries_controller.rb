class GalleriesController < ApplicationController
  before_filter :authenticate, :only => [:new, :create]
  
  def new
    @gallery = Gallery.new
  end
  
  def create
    @gallery = current_user.galleries.new(params[:gallery])
    if @gallery.save
      redirect_to @gallery, :notice => "Gallery created!"
    else
      render :action => "new"
    end
  end
  
  def show
    @gallery = current_user.galleries.find(params[:id])
  end
end