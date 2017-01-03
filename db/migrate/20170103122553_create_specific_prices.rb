class CreateSpecificPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :specific_prices do |t|
      t.decimal :price
      t.references :room, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
