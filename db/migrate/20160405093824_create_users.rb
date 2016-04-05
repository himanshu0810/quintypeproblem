class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.decimal :latitude, precision: 9, scale: 9
      t.decimal :longitude, precision: 9, scale: 9

      t.timestamps null: false
    end
  end
end
