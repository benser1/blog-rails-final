class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @user = User.find(current_user)
  end

  def new
    @post = Post.new # instantiating a post Post

    # how does it render that form?
    # what's the implict rendering convention of rails?
    # render '/posts/new'
  end

  def create
      @post = Post.new(post_params)
      @post.user_id = current_user.id 
      @post.category_id = params[:category_id]
      @post.save

      redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update 
    @post = Post.find(params[:id])
    @post.update(post_params)
    @post.category_id = params[:category_id]
    @post.user = current_user
    @post.save
    redirect_to post_path(@post)
  end

  def show 
    @post = Post.find(params[:id]) 
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to posts_path(current_user)
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end

end ## class end
