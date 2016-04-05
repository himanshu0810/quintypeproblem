class Distancefunction < ActiveRecord::Migration
 
  def up

  	  execute "DROP PROCEDURE IF EXISTS min_distance"

    sql = <<-SQL
     CREATE  PROCEDURE `min_distance`
   (IN lat Decimal(9,6), IN lon Decimal(9,6) , IN car_type varchar(6) )
     
 BEGIN
   SELECT c.id,
          sqrt(((lat - c.latitude )*(lat - c.latitude)) + ((lon- c.longitude) * 
          	(lon-c.longitude))
             )  AS distance
   FROM cabs AS c
   WHERE  c.status = 1 and c.car_type=car_type
   ORDER BY distance ASC
    LIMIT 1;
 END

    SQL

    execute sql
  end

  def down
  end



end
