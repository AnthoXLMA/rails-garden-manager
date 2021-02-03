class CategoriesController < ApplicationController
  def index
    @categories = {
      1 => "Dunk"
      2 => "Games"
      3 => "3pts Challenge"
      4 => "Tournament"
    }
  end

  def show
    @categories = Category.find(params[:id])
    @event = Event.new
    @events = @category.events
  end

  def new
    @category =Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
