class Admin::BookingsController < ApplicationController
  before_action :is_admin?

  def create
    @booking = Booking.new(booking_params)
  end

  def new
    @booking = Booking.new()
    @rooms = Room.all
    @potential_users = User.select{ |user| user.email == params[:email] || user.last_name == params[:lname] || user.first_name == params[:fname] }
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :arrival_hour, :departure_hour, :room_id)
  end

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end
end
