class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def new
    @sneaker = Sneaker.new
  end

  def create
    strong_params = params.require(:sneaker).permit(:image, :name, :price)
    Sneaker.create(strong_params)

    redirect_to sneakers_path
  end
end
