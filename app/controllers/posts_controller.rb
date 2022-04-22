class PostsController < ApplicationController
  def index
    @posts=Post.all.order("created_at DESC")
  end

  def create
    @post=Post.create(title: params[:titulo], image_url: params[:url_img],content: params[:contenido])
  end
end
