class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]
  def create
    @wall = Wall.find(params[:wall_id])
    @review = @wall.reviews.build(reviews_params)
    @reviews = @wall.reviews.select do |review|
      review.persisted?
    end
    if @review.save
      respond_to do |format|
        format.html { redirect_to wall_path(@wall) }
        format.js
      end

    else
      respond_to do |format|
        format.html { render 'walls/show' }
        format.js
      end

    end
  end

  private

  def reviews_params
    params.require(:review).permit(:content)
  end
end
