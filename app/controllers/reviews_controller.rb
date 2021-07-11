class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :user_id_verification, only: [:edit, :update, :destroy]

  def index
    @reviews = Review.order('created_at DESC')
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

  def show
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
    @like = Like.new
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to review_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:store_name, :facility_id, :customer_base_id, :access_id, :prefectures_id,
                                   :bicycle_parking_id, :parking_lot_id, :crowded_time_id, :staff_id, :text).merge(user_id: current_user.id)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def user_id_verification
    redirect_to root_path unless current_user.id == @review.user_id
  end
end
