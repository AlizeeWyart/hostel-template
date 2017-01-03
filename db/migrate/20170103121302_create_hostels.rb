class CreateHostels < ActiveRecord::Migration[5.0]
  def change
    create_table :hostels do |t|
      t.string :name
      t.string :address
      t.string :short_description
      t.text :description
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
