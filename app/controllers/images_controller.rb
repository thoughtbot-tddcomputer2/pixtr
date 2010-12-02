class ImagesController < ApplicationController
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @image = @gallery.images.build(params[:image])
    if @image.save
      redirect_to gallery_path(@gallery), :notice => "Image uploaded successfully"
    else
      render :action => "new"
    end
  end
  
  def new
    @gallery = Gallery.find(params[:gallery_id])
    @image = @gallery.images.build
  end
end