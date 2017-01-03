class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  # VALIDATES
  validates :date, presence: true
  validates :final_price, presence: true
  validates :total_reduction, presence: true
end
