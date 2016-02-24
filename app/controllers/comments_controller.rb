class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to user_posts_path(current_user)
  end

  def destroy
    unless current_user.admin?
      @comment = Comment.find(params[:id]).destroy
      redirect_to user_posts_path(current_user)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :name)
  end
end
