class AddPriceToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :final_price, :decimal
    add_column :bookings, :total_reduction, :string
  end
end
