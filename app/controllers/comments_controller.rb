class CommentsController < ApplicationController
  def new
    @gallery = Gallery.find(params[:gallery_id])
    @comment = @gallery.comments.build(params[:comment])
  end
  
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @comment = @gallery.comments.build(params[:comment])
    @comment.user = current_user
    
    respond_to do |format|
      if(@comment.save)
        # format.js
        format.html { redirect_to gallery_path(@gallery), :notice => "Comment created!"}
      else
        format.html { render :action => "new" }
      end
    end
  end
end