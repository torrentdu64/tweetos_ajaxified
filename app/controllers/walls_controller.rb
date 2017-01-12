class WallsController < ApplicationController

  def index
    @walls = Wall.all
  end

  def show
    @wall = Wall.find(params[:id])
    @review = Review.new
  end
end
