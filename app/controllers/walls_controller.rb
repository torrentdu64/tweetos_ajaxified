class WallsController < ApplicationController

  def index
    @walls = Wall.all
    @reviews = @wall.reviews
  end

  def show
    @wall = Wall.find(params[:id])
    @review = Review.new
  end
end
