class Api::PostsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @posts = Post.all.order(id: :desc).sort_by { |post| post.score }.reverse
    render "index.json.jb"
  end

  def show
    @post = Post.find(params[:id])
    render "show.json.jb"
  end

  def create
    @post = Post.new(
      user_id: current_user.id,
      title: params[:title],
      content: params[:content],
      category_id: params[:category_id],
    )
    @post.save
    if @post.save
      render "show.json.jb"
    else
      render json: {
        errors: @post.errors.full_messages,
      }, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user.admin == true
      @post = Post.find(params[:id])
      @post.destroy
      render json: { message: "Post successfully deleted" }
    else
      render json: { message: "You must be an admin to delete posts" }, status: :unauthorized
    end
  end
end
