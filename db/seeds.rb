# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## Users

user1 = User.new(
  name: 'John Smith',
  email: "john.smith@example.com",
  password_digest: "password"
)

user1.save!

user2 = User.new(
  name: 'Warren Peace',
  email: "warren.peace@example.com",
  password_digest: "password"
)

user2.save!

user3 = User.new(
  name: 'Robin Banks'  ,
  email: "robin.banks@example.com",
  password_digest: "password"
)

user3.save!

user4 = User.new(
  name: 'Anita Bathe',
  email: "anita.bathe@example.com",
  password_digest: "password"
)

user4.save!

user5 = User.new(
  name: 'Al Dente',
  email: "al.dante@example.com",
  password_digest: "password"
)

user5.save!

user6 = User.new(
  name: 'Kerry Oki',
  email: "kerry.oki@example.com",
  password_digest: "password"
)

user6.save!