class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.time :arrival_hour
      t.time :departure_hour
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
