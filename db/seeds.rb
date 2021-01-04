# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Group.delete_all
Raid.delete_all

9.times {User.create(username: Faker::Name.first_name, password: Faker::Internet.password)}

3.times {Group.create(name: Faker::Color.color_name)}

3.times {Raid.create(name: 'Attack on ' + Faker::Games::ElderScrolls.city, reward_item_1: Faker::Games::ElderScrolls.weapon, reward_item_2: Faker::Games::ElderScrolls.jewelry)}
