class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)

      if @food.save
        redirect_to @food, notice: 'Food was successfully created'
      else
        render 'new'
      end
  end

  def show
    @food = Food.find(params[:id])
  end

  private
    def food_params
      params.require(:food).permit(:title, :description, :quantity)
    end

end
