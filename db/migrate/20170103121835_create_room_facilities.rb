class CreateRoomFacilities < ActiveRecord::Migration[5.0]
  def change
    create_table :room_facilities do |t|
      t.boolean :shown
      t.references :facility, foreign_key: true
      t.references :room, foreign_key: true
      t.string :short_description
      t.string :fontawesome

      t.timestamps
    end
  end
end
