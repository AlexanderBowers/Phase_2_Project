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

    admin = User.create(:username => "Admin", :password => "lol")
    u1 = User.create(:username => "TSnuttle", :email => "lol@gmail.com", :discord_id => "TSnuttle#6461", :steam_id => "tsnuttle", :password => "lol", :user_desc => "Hi, I play games.")

    r1 = Raid.create(:name => "Raid on " + Faker::Games::ElderScrolls.city)
    r2 = Raid.create(:name => "Attack on " + Faker::Games::ElderScrolls.city)
    r3 = Raid.create(:name => "Raid " + Faker::Games::ElderScrolls.city)

    Role.create(name: "tank")
    Role.create(name: "dps")
    Role.create(name: "healer")
    Analytic.create