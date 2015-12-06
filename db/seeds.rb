# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pin.create(title: 'Pin #1 - Only Delete If More Than 3 Pins Exist!', description: "Stuff and things", user_id: 1, image: File.new("#{Rails.root}/app/assets/images/placeholder.jpg"))
Pin.create(title: 'Pin #2 - Only Delete If More Than 3 Pins Exist!', description: "Stuff and things", user_id: 1, image: File.new("#{Rails.root}/app/assets/images/placeholder.jpg"))
Pin.create(title: 'Pin #3 - Only Delete If More Than 3 Pins Exist!', description: "Stuff and things", user_id: 1, image: File.new("#{Rails.root}/app/assets/images/placeholder.jpg"))
@user = User.create!(name: "Administrator",
                 email: "test@case.com",
                 password: "password",
                 password_confirmation: "password")
@user.admin = true
@user.save