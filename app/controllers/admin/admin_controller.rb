class Admin::AdminController < ApplicationController
  before_action :is_admin?

  def dashboard
  end

  def hostels
    @hostels = Hostel.all
  end

  def restaurants
    @restaurants = Restaurant.all
  end

  def bookings
    @potential_users = User.select{ |user| user.email == params[:email] || user.last_name == params[:lname] || user.first_name == params[:fname] }
    today = Date.today
    @new_booking = Booking.new
    @rooms = Room.all
    @today_bookings = Booking.select { |booking| booking.date = today}
  end

  def rooms
    @rooms = Room.all
  end

  def users
  end

  def employees
  end

  def blog
  end

  private

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end
end
