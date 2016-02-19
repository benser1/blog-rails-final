class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    redirect_to root_path
  end

  def edit
  end

  def update 
  end

  def show 
    @post = Post.find(params[:id])
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content)
  end



end ## class end
