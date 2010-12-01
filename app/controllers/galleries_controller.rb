class GalleriesController < ApplicationController
  def new
    @gallery = Gallery.new
  end
  
  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      redirect_to @gallery, :notice => "Gallery created!"
    else
      render :action => "new"
    end
  end
  
  def show
    @gallery = Gallery.find(params[:id])
  end
end