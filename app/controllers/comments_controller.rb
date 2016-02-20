class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to posts_path
  end

  def destroy
    @comment = Comment.find(params[:id]).destroy
    redirect_to posts_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :name)
  end
end
