class Api::VotesController < ApplicationController
  before_action :authenticate_user

  def index
    @votes = Vote.all
    render "index.json.jb"
  end

  def show
    @vote = Vote.find(params[:id])
    render "show.json.jb"
  end

  def create
    #I want users to have 1 vote per post/comment: toggle button
    @vote = Vote.new(
      value: params[:value],
      post_id: params[:post_id],
      comment_id: params[:comment_id],
      user_id: current_user.id,
    )
    if @vote.save
      render "show.json.jb"
    else
      render json: { errors: @vote.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    render json: { message: "Vote successfully deleted" }
  end
end
