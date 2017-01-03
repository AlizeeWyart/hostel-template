class CreateBookingReductions < ActiveRecord::Migration[5.0]
  def change
    create_table :booking_reductions do |t|
      t.references :booking, foreign_key: true
      t.references :reduction, foreign_key: true

      t.timestamps
    end
  end
end
