class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]
  def index
    @category = Category.all
  end

  def show
  end

  def new
    @category = Category.new()
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def set_category
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit!
  end
end
