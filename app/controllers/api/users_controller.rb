class Api::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def create
  end

  def new
    #make when you need for the front end
  end
end
