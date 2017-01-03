class SpecificPrice < ApplicationRecord
  belongs_to :room
  # VALIDATIONS
  validates :price, presence: true
  validates :date, presence: true
end
