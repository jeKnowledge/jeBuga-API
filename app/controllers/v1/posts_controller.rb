class V1::PostsController < ApplicationController
  def create
    @post = Post.new(create_post_params)

    if @post.save
      render :create, status: :created
    else
      @error = @post.errors.full_messages.first
      render :errors, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
    render :index, status: :ok
  end

  def show
    @post = Post.find(params[:id])

    if @post
      @comments = @post.comments
      render :show, status: :ok
    else
      head(:unprocessable_entity)
    end
  end

  private
  def create_post_params
    params.require(:post).permit(:title, :content, :theme_id).merge(user_id: @current_user.id)
  end
end
