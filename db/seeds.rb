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

##trips

trip1 = Trip.new(
  title: "Euro Trip",
  description: "Exploring European history and culture!",
  start_date: "July 22 2020",
  end_date: "August 1 2020"
)
trip1.save!

trip2 = Trip.new(
  title: "All American Road Trip",
  description: "Road trip through all the national parks in the USA",
  start_date: "August 5 2020",
  end_date: "October 1 2020"
)
trip2.save!


##destinations

destination1 = Destination.new(
  name: "Paris",
  trip_id: 1,
  lat: 48.8566,
  lng: 2.3522
)
destination1.save!

destination2 = Destination.new(
  name: "Barcelona",
  trip_id: 1,
  lat: 41.3851,
  lng: 2.1734
)
destination2.save!

destination3 = Destination.new(
  name: "Rome",
  trip_id: 1,
  lat: 41.9028,
  lng: 12.4964
)
destination3.save!


##collaborators

collaborator1 = Collaborator.new(
  user_id: 2,
  trip_id: 1
)
collaborator1.save!

collaborator2 = Collaborator.new(
  user_id: 3,
  trip_id: 1
)
collaborator2.save!


##packing_items

packing_item1 = PackingItem.new(
  description: "Sunnies",
  trip_id: 1
)
packing_item1.save!

packing_item2 = PackingItem.new(
  description: "Passport",
  trip_id: 1
)
packing_item2.save!

packing_item3 = PackingItem.new(
  description: "Book",
  trip_id: 1
)
packing_item3.save!

##components

component1 = Component.new(
  title: "Restaurants",
  destination_id: 1
)
component1.save!

component2 = Component.new(
  title: "Sights to See",
  destination_id: 1
)
component2.save!

component3 = Component.new(
  title: "Entertainment",
  destination_id: 1
)
component3.save!

component4 = Component.new(
  title: "Restaurants",
  destination_id: 2
)
component4.save!

component5 = Component.new(
  title: "Sights to See",
  destination_id: 2
)
component5.save!

component6 = Component.new(
  title: "Entertainment",
  destination_id: 2
)
component6.save!

component7 = Component.new(
  title: "Restaurants",
  destination_id: 3
)
component7.save!

component8 = Component.new(
  title: "Sights to See",
  destination_id: 3
)
component8.save!

component9 = Component.new(
  title: "Sights to See",
  destination_id: 3
)
component9.save!


##component_items

component_item1 = ComponentItem.new(
  title: "Hardware Societe Paris",
  description: "Best french toast in all the land!!!",
  image_url: "https://lh5.googleusercontent.com/p/AF1QipNVU0mVAGdqg2LCT-K-1fsZr7zKI3j2o7NemJr2=w408-h306-k-no",
  address: "The Hardware Société Paris, Rue Lamarck, Paris, France",
  component_id: 1
)
component_item1.save!

