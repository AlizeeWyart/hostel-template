class Room < ApplicationRecord
  belongs_to :hostel
  has_many :room_facilities
  has_many :facilities, through: :room_facilities
  # VALIDATIONS
  validates :name, presence: true
end
