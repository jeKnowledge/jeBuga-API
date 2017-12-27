class V1::PostsController < ApplicationController
  def create
    @post = Post.new(post_params)

    if @post.save
      render :create, status: :created
    else
      head(:unprocessable_entity)
    end
  end

  def index
    @posts = Post.all
    render :index, status: :ok
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
