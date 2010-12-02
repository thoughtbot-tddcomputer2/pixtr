class GalleriesController < ApplicationController
  before_filter :authenticate, :only => [:new, :create]
  
  def index
    all_galleries
  end
  
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
    @gallery = Gallery.find(params[:id])
    @image = @gallery.images.build
    @comment = @gallery.comments.build
  end
end