class CommentsController < ApplicationController
  def new
    @activity = Activity.find(params[:activity_id])
    @comment = Comment.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @comment = Comment.new(comment_params)
    @comment.activity = @activity
    @comment.user = current_user

    if @comment.save
      redirect_to @activity, notice: 'Comment was successfully created.'
    else
      render 'activities/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
