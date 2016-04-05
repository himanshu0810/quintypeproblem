# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cab.create(latitude: '33.373694', longitude: '19.4874984', car_type: 'pink' ,status: 1)
Cab.create(latitude: '40.373694', longitude: '29.4874984', car_type: 'normal' ,status: 1)
Cab.create(latitude: '45.373694', longitude: '39.4874984', car_type: 'pink' ,status: 1)
Cab.create(latitude: '81.373694', longitude: '69.4874984', car_type: 'normal' ,status: 1)




User.create(username: 'User1' , latitude: '35.373694', longitude: '20.4874984' , car_id: 0)
User.create(username: 'User2' , latitude: '33.373694', longitude: '39.4874984' , car_id: 0)
User.create(username: 'User3' , latitude: '33.373694', longitude: '39.4874984' ,car_id: 0 )

