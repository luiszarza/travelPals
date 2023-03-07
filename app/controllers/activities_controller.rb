class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
    @booking = Booking.new
  end

  def new
    @activity = Activity.new
    @user = current_user
  end

  def create
    @activity = Activity.new(listing_params)
    @user = current_user
    @activity.user = @user
    if @activity.save
      redirect_to listing_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @activity.update(listing_params)
    redirect_to listing_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to listings_path, status: :see_other
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def listing_params
    params.require(:activity).permit(:content, :location, :title, :price, photos: [])
  end

end

