class WallsController < ApplicationController
 skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @walls = Wall.all

  def show
    @wall = Wall.find(params[:id])
    @review = Review.new
    @reviews = @wall.reviews.select do |review|
      review.persisted?
    end
  end

end
