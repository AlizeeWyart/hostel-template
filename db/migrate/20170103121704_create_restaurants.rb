class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :short_description
      t.text :description
      t.references :hostel, foreign_key: true

      t.timestamps
    end
  end
end
