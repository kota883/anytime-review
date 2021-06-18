class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:store_name, :facility_id, :customer_base_id, :access_id, :prefectures_id, :bicycle_parking_id, :parking_lot_id, :crowded_time_id, :staff_id, :text).merge(user_id: current_user.id)
  end
end
