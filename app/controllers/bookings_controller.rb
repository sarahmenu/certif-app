class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @user = current_user
    @booking.room = @room
    @booking.user = @user
    if @booking.save
      redirect_to room_path(@room), notice: "Congratulations ! Your booking has gone through!"
    else
      redirect_to room_path(@room), alert: "Error ! Your booking could not be processed."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
