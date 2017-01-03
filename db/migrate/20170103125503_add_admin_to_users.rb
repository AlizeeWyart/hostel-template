class AddAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :employee, :boolean, default: false
    add_column :users, :customer, :boolean, default: false
    add_column :users, :visitor, :boolean, default: true
  end
end
