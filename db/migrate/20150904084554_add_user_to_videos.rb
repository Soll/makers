class AddUserToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :user, index: true
    add_foreign_key :videos, :users
  end
end
