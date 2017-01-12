class ReviewsController < ApplicationController
  def create
    @wall = Wall.find(params[:wall_id])
    @review = @wall.reviews.build(reviews_params)
    # @review = Review.new(reviews_params)
    # @review.wall = @wall
    @reviews = @wall.reviews.select do |review|
      review.persisted?
    end
    if @review.save
      redirect_to wall_path(@wall)
    else
      render 'walls/show'
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:content)
  end
end
