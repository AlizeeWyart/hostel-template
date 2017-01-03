class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :description
      t.text :short_description
      t.text :amenities
      t.boolean :shown
      t.decimal :low_season_week_price
      t.decimal :hot_season_wkd_price
      t.decimal :hot_season_week_price
      t.decimal :low_season_wkd_price
      t.references :hostel, foreign_key: true

      t.timestamps
    end
  end
end
