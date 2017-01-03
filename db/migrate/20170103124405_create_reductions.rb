class CreateReductions < ActiveRecord::Migration[5.0]
  def change
    create_table :reductions do |t|
      t.string :code
      t.decimal :percentage
      t.decimal :money_reduc
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
