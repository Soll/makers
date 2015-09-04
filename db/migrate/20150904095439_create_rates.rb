class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.references :user, index: true
      t.references :video, index: true

      t.timestamps null: false
    end
    add_foreign_key :rates, :users
    add_foreign_key :rates, :videos
  end
end
