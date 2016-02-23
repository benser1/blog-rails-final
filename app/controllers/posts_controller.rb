class PostsController < ApplicationController
  load_and_authorize_resource

  helper_method :sort_column,  :sort_direction

  def index
    @posts = Post.order(sort_column + " " + sort_direction)
    # if params[:user_id]
    #   @posts = User.find(params[:user_id]).posts 
    # else
    #   @posts = Post.all
    # end
  end

  def new
    @post = Post.new
  end

  def create
      @post = Post.new(post_params)
      @post.user_id = current_user.id 
      @post.category_id = params[:category_id]
      @post.save

      redirect_to posts_path
  end

  def edit
    params_id
  end

  def update 
    params_id
    @post.update(post_params)
    redirect_to posts_path
  end

  def show 
    # if params[:user_id]
    #   @post = User.find(params[:user_id]).posts.find(params[:id])
    # else
      params_id
    # end
  end

  def destroy
    params_id.destroy
    redirect_to posts_path
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end

  def params_id
    @post = Post.find(params[:id])
  end

  def sort_column
    params[:sort] || "title"
  end

  def sort_direction
    params[:direction] || "asc"
  end


end ## class end
