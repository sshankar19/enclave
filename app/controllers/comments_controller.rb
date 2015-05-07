class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_member
    if @comment.save
      redirect_to discussion_path(@comment.discussion)
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :format, :discussion_id)
  end
end
