class AddToUsersColumnMaker < ActiveRecord::Migration
  def change
    add_column :users, :maker, :boolean, default: false
  end
end
