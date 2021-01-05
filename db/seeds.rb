# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD
User.delete_all
Group.delete_all
Raid.delete_all

u1 = User.create(username: "TSnuttle", password: Faker::Internet.password, pix_url: Faker::Avatar.image)
u2 = User.create(username: "Dankmaster69420", password: Faker::Internet.password, pix_url: Faker::Avatar.image)
u3 = User.create(username: "Egofaptor", password: Faker::Internet.password, pix_url: Faker::Avatar.image)
u4 = User.create(username: "Rubberninja", password: Faker::Internet.password, pix_url: Faker::Avatar.image)
u5 = User.create(username: "_sips", password: Faker::Internet.password, pix_url: Faker::Avatar.image)

g1 = Group.create(name: "git_yeeted")
g2 = Group.create(name: "^this_meme_is_dead")
g3 = Group.create(name: "bopcat")

r1 = Raid.create(name: 'Attack on ' + Faker::Games::ElderScrolls.city, reward_item_1: Faker::Games::ElderScrolls.weapon, reward_item_2: Faker::Games::ElderScrolls.jewelry)
r2 = Raid.create(name: 'Attack on ' + Faker::Games::ElderScrolls.city, reward_item_1: Faker::Games::ElderScrolls.weapon, reward_item_2: Faker::Games::ElderScrolls.jewelry)
r3 = Raid.create(name: 'Attack on ' + Faker::Games::ElderScrolls.city, reward_item_1: Faker::Games::ElderScrolls.weapon, reward_item_2: Faker::Games::ElderScrolls.jewelry)

ug1 = UserGroup.create(user_id: 1, group_id: 2)


=======


    Role.create(name: "tank")
    Role.create(name: "dps")
    Role.create(name: "healer")
>>>>>>> origin/master
