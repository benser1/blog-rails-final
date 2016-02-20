class PostsController < ApplicationController
  load_and_authorize_resource

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
    params_id
  end

  def update 
    params_id
    if @post.update(post_params)
       redirect_to posts_path
    else
      render :edit
    end
  end

  def show 
    params_id
  end

  def destroy
    params_id.destroy
    redirect_to posts_path
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def params_id
    @post = Post.find(params[:id])
  end



end ## class end
