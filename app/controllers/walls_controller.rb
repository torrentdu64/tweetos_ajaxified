class WallsController < ApplicationController

  def index
    @walls = Wall.all
    @reviews = @wall.reviews.select do |review|
      review.persisted?
    end
  end

  def show
    @wall = Wall.find(params[:id])
    @review = Review.new
  end
end
