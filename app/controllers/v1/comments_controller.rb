class V1::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)

    if @comment.save
      render :create, status: :created
    else
      @error = @user.errors.full_messages.first
      render partial: 'v1/common/error', status: :unprocessable_entity
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:post_id, :content).merge(user_id: @current_user.id)
  end
end
