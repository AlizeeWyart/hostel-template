class Room < ApplicationRecord
  belongs_to :hostel
  # VALIDATIONS
  validates :name, presence: true
end
