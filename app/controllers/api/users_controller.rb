class Api::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])
    if @user == current_user
      @user.name = params[:name] || @user.name
      @user.email = params[:email] || @user.email
      @user.profile_pic = params[:profile_pic] || @user.profile_pic
      @user.bio = params[:bio] || @user.bio
      @user.fav_game = params[:fav_game] || @user.fav_game
      @user.fav_movie = params[:fav_movie] || @user.fav_movie
      @user.fav_band = params[:fav_band] || @user.fav_band
      @user.banner = params[:banner] || @user.banner
      if @user.save
        render "show.json.jb"
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "unauthorized" }, status: :unauthorized
    end
  end
end
