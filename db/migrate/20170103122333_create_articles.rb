class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.date :date
      t.string :short_description
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
