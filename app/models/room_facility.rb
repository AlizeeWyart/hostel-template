class RoomFacility < ApplicationRecord
  belongs_to :facility
  belongs_to :room
  # VALIDATIONS
end
