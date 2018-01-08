class V1::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)

    if @comment.save
      render :create, status: :created
    else
      head(:unprocessable_entity)
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:content)
  end
end
