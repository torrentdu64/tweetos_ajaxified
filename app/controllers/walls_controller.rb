class WallsController < ApplicationController

  def index
    @walls = Wall.all
  end

  def show
    @wall = Wall.find(params[:id])
    @review = Review.new
    @reviews = @wall.reviews.select do |review|
      review.persisted?
    end
  end
end
