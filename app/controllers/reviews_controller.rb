class ReviewsController < ApplicationController
  def create
    @wall = Wall.find(params[:wall_id])

    @review = Review.new(reviews_params)
    @review.wall = @wall
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
