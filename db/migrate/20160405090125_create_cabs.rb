class CreateCabs < ActiveRecord::Migration
  def change
    create_table :cabs do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.string :car_type
      t.integer :status

      t.timestamps null: false
    end
  end
end
