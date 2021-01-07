class Api::CommentsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @comments = Comment.where("post_id = ?", params[:id])
    render "index.json.jb"
  end

  def create
    @comment = Comment.new(
      user_id: current_user.id,
      name: current_user.name,
      post_id: params[:post_id],
      content: params[:content],
    )
    if @comment.save
      render "show.json.jb"
    else
      render json: {
        errors: @comment.errors.full_messages,
      }, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user.admin == true
      @comment = Comment.find(params[:id])
      @comment.destroy
      render json: { message: "comment successfully deleted" }
    else
      render json: { message: "You must be an admin to delete comments" }, status: :unauthorized
    end
  end
end
