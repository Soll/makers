class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.references :user, index: true
      t.references :video, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :videos
  end
end
