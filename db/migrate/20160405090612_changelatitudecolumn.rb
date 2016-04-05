class Changelatitudecolumn < ActiveRecord::Migration
  
  def up
  	change_column :cabs, :latitude , :decimal , :precision => 9 , :scale => 6
  	change_column :cabs, :longitude , :decimal , :precision => 9 , :scale => 6
  end

  def down
  end



end
