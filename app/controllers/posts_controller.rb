class PostsController < ApplicationController

  def index
    ## not sure if I need this
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
    ## I think this would be my index page
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content)
  end



end ## class end
