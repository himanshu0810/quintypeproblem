class Addcaridtousers < ActiveRecord::Migration
  
  def up
  	add_column(:users, :car_id , :integer)
  end

  def down
  end



end
