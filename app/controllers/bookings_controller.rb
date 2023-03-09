class BookingsController < ApplicationController
  def confirmation
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to activities_path, alert: "You have left the activity."
  end

  def create
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.user = current_user
    if @booking.save
      redirect_to confirmation_booking_path(@booking)
    else
      render 'activities/show'
    end
  end
end

private

def booking_params
  params.require(:booking).permit(:activity_id)
end
