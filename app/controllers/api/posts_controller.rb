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
      image_url: params[:image_url],
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

  def update
    @post = Post.find(params[:id])
    if @post.user.id == current_user.id
      @post.title = params[:title] || @post.title
      @post.content = params[:content] || @post.content
      @post.image_url = params[:image_url] || @post.image_url
      @post.category = params[:category] || @post.category
      if @post.save
        render "show.json.jb"
      else
        render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "This is not your post" }, status: :unauthorized
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user.admin == true || @post.user.id == current_user.id
      @post.destroy
      render json: { message: "Post successfully deleted" }
    else
      render json: { message: "You must be an admin or the post owner to delete posts" }, status: :unauthorized
    end
  end
end
