class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render "index.json.jb"
  end

  def show
    @post = Post.find(params[:id])
    render "show.json.jb"
  end

  def create
    @post = Post.new(
      title: params[:title],
      content: params[:content],
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
    @post = Post.find(params[:id])
    @post.destroy
    render json: { message: "Post successfully deleted" }
  end
end
