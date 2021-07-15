# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Order.destroy_all
Item.destroy_all
Review.destroy_all

puts "users..."
u1 = User.create(username: "bob", password: "aaaa")
u2 = User.create(username: "kai", password: "12345")
u3 = User.create(username: "kim", password: "abcde")



puts "items/produce..."
Item.create(name: "Bitter Melon", price: rand(1..5), image: "https://cdn.i-scmp.com/sites/default/files/styles/1920x1080/public/d8/images/methode/2019/11/24/1e9530b0-0ea3-11ea-afcd-7b308be3ba45_image_hires_191958.jpg?itok=6947Ys3Y&v=1574594405", description: "a plant")
Item.create(name: "Jute Leaves", price: rand(1..5), image: "https://i2.wp.com/www.tagaloglang.com/ux/wp-content/uploads/2015/12/saluyot_leaves.jpg?fit=640%2C640&ssl=1", description: "a plant")
Item.create(name: "Luffa", price: rand(1..5), image: "https://i.pinimg.com/564x/ce/00/9d/ce009d3c8868acdec3075f93bd92b2a9.jpg", description: "a plant")
Item.create(name: "Bottle Gourd", price: rand(1..5), image: "https://images-na.ssl-images-amazon.com/images/I/71SnJKhaAeL._AC_SL1125_.jpg", description: "a plant")



puts "orders..."
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)


puts "reviews..."
3.times do 
    Review.create(text: "Cheap", user_id: User.ids.sample, item_id: Item.ids.sample)
end

puts "dones..."