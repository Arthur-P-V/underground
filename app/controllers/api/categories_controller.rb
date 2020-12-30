class Api::CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    render "show.json.jb"
  end
end
