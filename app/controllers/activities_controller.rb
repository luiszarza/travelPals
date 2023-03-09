class ActivitiesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
    @already_booked = Booking.where(activity: @activity, user: current_user).any?
    @booking = Booking.new
    @activities = Activity.where(id: params[:id])
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
    end
    if @already_booked
      @booking = Booking.find_by(activity: @activity, user: current_user)
    end
  end

  def new
    @activity = Activity.new
    @user = current_user
  end

  def create
    @activity = Activity.new(activity_params)
    @user = current_user
    @activity.user = @user
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to activities_path, status: :see_other, alert: "Activity deleted"
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :description, :location, :time, photos: [])
  end

end
