class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user

    redirect_to post_path(@post)
  end

  def destroy
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id]).destroy
      redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :name)
  end


end ## class end
