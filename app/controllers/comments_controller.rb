class CommentsController < ApplicationController
  before_action :authenticate_mode!

  def new
    @comment = Comment.new
  end

  def create
    @meet = Meet.find(params[:meet_id])

    @comment = Comment.new(comment_params)
    @comment.meet_id = @meet.id
    @comment.mode_id = current_mode.id

    if @comment.save
      redirect_to :back
    else
      render :new
    end
  end

  protected

  def comment_params
    params.require(:comment).permit(:message)
  end
end
