class BookingsController < ApplicationController
  def admin_create
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :arrival_hour, :departure_hour)
  end
end
