class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def edit
  end

  def update 
  end

  def show 
    @post = Post.find(params[:id])
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content)
  end



end ## class end
