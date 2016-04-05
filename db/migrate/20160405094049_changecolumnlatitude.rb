class Changecolumnlatitude < ActiveRecord::Migration
  
  def up
  	  	change_column :users, :latitude , :decimal , :precision => 9 , :scale => 6
  	change_column :users, :longitude , :decimal , :precision => 9 , :scale => 6
  end

  def down
  end

end
