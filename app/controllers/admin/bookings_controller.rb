class Admin::BookingsController < ApplicationController
  before_action :is_admin?

  def create
    @booking = Booking.new(booking_params)
  end

  def new
    @booking = Booking.new()
    @rooms = Room.all
    # CHOIX AJAX
    if !params[:date].blank?
    @potential_date = Date.parse(params[:date])
    # @potential_rooms = Room.select {|room| room.date == @potential_date }
    end
    if !params[:room_id].blank?
    @potential_room = Room.find(params[:room_id])
    end
    if !params[:date].blank? && !params[:room_id].blank?
    @potential_booking = Booking.select{|b| b.date == @potential_date && b.room == @potential_room}
    end
    if !params[:customer].blank?
    @potential_users = User.select{ |user| user.email == params[:customer] || user.last_name == params[:customer] || user.first_name == params[:customer] }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :arrival_hour, :departure_hour, :room_id)
  end

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end
end
