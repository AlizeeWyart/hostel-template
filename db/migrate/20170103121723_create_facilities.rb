class CreateFacilities < ActiveRecord::Migration[5.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :short_description
      t.string :fontawesome

      t.timestamps
    end
  end
end
