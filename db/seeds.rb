# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Role.destroy_all
    User.destroy_all
    Group.destroy_all
    Raid.destroy_all
    UserGroup.destroy_all
    UserGroupRole.destroy_all
    GroupRaid.destroy_all

    admin = User.create(:username => "Admin", :password => "lol", :pix_url => Faker::Avatar.image)
    u1 = User.create(:username => "TSnuttle", :pix_url => Faker::Avatar.image, :email => "lol@gmail.com", :discord_id => "TSnuttle#6461", :steam_id => "tsnuttle", :password => "lol", :user_desc => "Hi, I play games.")

    r1 = Raid.create(:name => "Raid on " + Faker::Games::ElderScrolls.city, :description => "Take back the city!", :reward_item_1 =>  Faker::Games::ElderScrolls.weapon, :reward_item_2 => Faker::Games::ElderScrolls.jewelry)
    r2 = Raid.create(:name => "Attack on " + Faker::Games::ElderScrolls.city, :description =>"Take back the city!", :reward_item_1 =>  Faker::Games::ElderScrolls.weapon, :reward_item_2 => Faker::Games::ElderScrolls.jewelry)
    r3 = Raid.create(:name => "Raid " + Faker::Games::ElderScrolls.city, :description => "Take back the city!", :reward_item_1 =>  Faker::Games::ElderScrolls.weapon, :reward_item_2 => Faker::Games::ElderScrolls.jewelry)
    r4 = Raid.create(:name => "Last Wish", :description => "Delve into the heart of the Last City and kill the last ahamkara, Riven.", :reward_item_1 => "One Thousand Voices", :reward_item_2 => "ERMINE TAC-717")

    Role.create(name: "tank")
    Role.create(name: "dps")
    Role.create(name: "healer")
    Analytic.create