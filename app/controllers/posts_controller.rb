class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if user_signed_in?
      @post = Post.create(post_params)
      redirect_to posts_path
    else
      redirect_to new_user_registration_path, alert: "You must be signed in to create a post!"
    end
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
