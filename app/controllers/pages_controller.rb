class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

  end

  def admin
    today = Date.today
    @articles = Article.all
    @hostels = Hostel.all
    @rooms = Room.all
    @users = User.all
    @today_bookings = Booking.select { |booking| booking.date = today}
    @known_visitors = @users.select { |user| user.visitor == true }
    @customers = @users.select { |user| user.customer == true }
    @employees = @users.select { |user| user.employee == true }
    @administrators = @users.select { |user| user.admin == true }
  end

  def dashboard
  end
end
