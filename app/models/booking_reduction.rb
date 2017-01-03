class BookingReduction < ApplicationRecord
  belongs_to :booking
  belongs_to :reduction
  # VALIDATIONS

end
