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
c1 = User.create(username: "Black", password: "1234")
c2 = User.create(username: "Yellow", password: "1234")
c3 = User.create(username: "Purple", password: "1234")



puts "items/produce..."
Item.create(name: "Bitter Melon", price: rand(1..5), image: "https://cdn.i-scmp.com/sites/default/files/styles/1920x1080/public/d8/images/methode/2019/11/24/1e9530b0-0ea3-11ea-afcd-7b308be3ba45_image_hires_191958.jpg?itok=6947Ys3Y&v=1574594405", description: "A vegetable widely grown in Asia, Africa and the Caribbean. It is VERY bitter, hence the name Bitter Melon.")
Item.create(name: "Jute Leaves", price: rand(1..5), image: "https://i2.wp.com/www.tagaloglang.com/ux/wp-content/uploads/2015/12/saluyot_leaves.jpg?fit=640%2C640&ssl=1", description: "A plant where the leaves are edible but are very slimy.")
Item.create(name: "Luffa", price: rand(1..5), image: "https://i.pinimg.com/564x/ce/00/9d/ce009d3c8868acdec3075f93bd92b2a9.jpg", description: "Luffa when in a young stage of development is edible and is put into a lot of asian dish. When a luffa is fully ripe it is very fibrous, and can be used as a scrubbing sponge.")
Item.create(name: "Bottle Gourd", price: rand(1..5), image: "https://images-na.ssl-images-amazon.com/images/I/71SnJKhaAeL._AC_SL1125_.jpg", description: "Bottle Gourd is an elongated shaped vegetable. When young it can be consumed as a vegetable but once mature can be used as a utensil, container, or musical instrument.")

Item.create(name: "String Beans", price: rand(1..5), image: "http://4.bp.blogspot.com/-fDkzqqYMnJs/VVC0MPbNr6I/AAAAAAAAUrE/j9qNUq9AD-A/s1600/long%2Bgreen%2Bbeans.jpg", description: "Sitaw, or String Beans is a climbing plant grown for its long edible pods.")
Item.create(name: "Eggplant", price: rand(1..5), image: "https://i2.wp.com/www.tagaloglang.com/ux/wp-content/uploads/2015/12/saluyot_leaves.jpg?fit=640%2C640&ssl=1", description: "Eggplant, or talong are slong, slender, and oblong. Can be mild and sweet witha tender, meaty texture.")
Item.create(name: "Green Amaranth", price: rand(1..5), image: "https://bloximages.chicago2.vip.townnews.com/myheraldreview.com/content/tncms/assets/v3/editorial/8/24/8249dcf4-8238-11e7-a370-1327fe57de62/5993c81a53ea3.image.jpg?resize=1200%2C675", description: "Green Amaranth or 'Kalunay' is a vegetable known as red spinach because the seedlings and stem are red but turns green when ripe.")
Item.create(name: "Lima Beans", price: rand(1..5), image: "https://ph-live-01.slatic.net/p/03247f93afedb4a9c933671a3eb1fb31.jpg_2200x2200q80.jpg_.webp", description: "Lima beans, or patani are beans that have the texture of butter. Has a multitude of different colors. ")

Item.create(name: "Okra", price: rand(1..5), image: "https://irenamacri.com/wp-content/uploads/2020/02/what-is-okra.jpg", description: "A vegetable widely known for its slime, this vegetable has many health benefits like improving digestion.")
Item.create(name: "Squash", price: rand(1..5), image: "https://tourismsancarloscitynegocc.files.wordpress.com/2014/09/kalabasa.jpg?w=1200", description: "Squash or Kalabasa is a very common vegetable in the Philippines. Other than the fruit, both flower and stem are edible.")
Item.create(name: "Winged Beans", price: rand(1..5), image: "https://mildlyindian.com/wp-content/uploads/2017/01/square-beans.jpg", description: "Also known as Sigarilyas is a tropical legume plant. All parts of the winged bean are edible including flowers.")
Item.create(name: "Hyacinth Beans", price: rand(1..5), image: "https://www.gardeningknowhow.com/wp-content/uploads/2012/06/hyacinth-bean.jpg", description: "Also known as Bataw are a very beautiful plant and have a unique smell to them. Has many health benefits like good for wegiht loss.")



puts "orders..."
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)


puts "reviews..."

Review.create(text: "Cheap", user_id: User.ids.sample, item_id: Item.ids.sample)
Review.create(text: "Kind of weird", user_id: User.ids.sample, item_id: Item.ids.sample)
Review.create(text: "First time trying it and its good", user_id: User.ids.sample, item_id: Item.ids.sample)
Review.create(text: "Its cheaper at Amazen", user_id: User.ids.sample, item_id: Item.ids.sample)
Review.create(text: "Bad produce", user_id: User.ids.sample, item_id: Item.ids.sample)

puts "dones..."