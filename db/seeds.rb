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
  description: "Jessica's fun in the sun girls trip!",
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
  lat: 48.8589996,
  lng: -2.2066306
)
destination1.save!

destination2 = Destination.new(
  name: "Barcelona",
  trip_id: 1,
  lat: 41.3949623,
  lng: -2.0083372
)
destination2.save!

destination3 = Destination.new(
  name: "Croatia",
  trip_id: 1,
  lat: 44.4285979,
  lng: -14.1571661
)
destination3.save!

destination4 = Destination.new(
  name: "Zion National Park",
  trip_id: 2,
  lat: 37.2982022,
  lng: -113.0263005
)
destination4.save!

destination5 = Destination.new(
  name: "Yellow Stone National Park",
  trip_id: 2,
  lat: 44.427963,
  lng: -110.588455
)
destination5.save!

destination6 = Destination.new(
  name: "Yosemite National Park",
  trip_id: 2,
  lat: 37.8651011,
  lng: -119.5383294
)
destination6.save!


##collaborators

collaborator1 = Collaborator.new(
  user_id: 2,
  trip_id: 1
)
collaborator1.save!

collaborator1 = Collaborator.new(
  user_id: 2,
  trip_id: 2
)
collaborator1.save!

collaborator2 = Collaborator.new(
  user_id: 3,
  trip_id: 1
)
collaborator2.save!

collaborator3 = Collaborator.new(
  user_id: 5,
  trip_id: 2
)
collaborator3.save!

collaborator4 = Collaborator.new(
  user_id: 4,
  trip_id: 2
)
collaborator4.save!

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
  description: "Hiking boots",
  trip_id: 2

)
packing_item3.save!

packing_item4 = PackingItem.new(
  description: "Sleeping bag",
  trip_id: 2
)
packing_item4.save!

packing_item5 = PackingItem.new(
  description: "Toothbrush",
  trip_id: 2
)
packing_item5.save!

packing_item6 = PackingItem.new(
  description: "Book",
  trip_id: 1
)
packing_item6.save!

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

component10 = Component.new(
  title: "Restaurants",
  destination_id: 4
)
component10.save!

component11 = Component.new(
  title: "Sights to See",
  destination_id: 4
)
component11.save!

component12 = Component.new(
  title: "Entertainment",
  destination_id: 4
)
component12.save!

component13 = Component.new(
  title: "Restaurants",
  destination_id: 5
)
component13.save!

component14 = Component.new(
  title: "Sights to See",
  destination_id: 5
)
component14.save!

component15 = Component.new(
  title: "Entertainment",
  destination_id: 5
)
component15.save!

component16 = Component.new(
  title: "Restaurants",
  destination_id: 6
)
component16.save!

component17 = Component.new(
  title: "Sights to See",
  destination_id: 6
)
component17.save!

component18 = Component.new(
  title: "Sights to See",
  destination_id: 6
)
component18.save!
##component_items

component_item1 = ComponentItem.new(
  title: "Hardware Societe Paris",
  description: "Best french toast in alll the land!!!",
  image_url: "https://lh5.googleusercontent.com/p/AF1QipNVU0mVAGdqg2LCT-K-1fsZr7zKI3j2o7NemJr2=w408-h306-k-no",
  address: "The Hardware Société Paris, Rue Lamarck, Paris, France",
  component_id: 1
)
component_item1.save!

component_item2 = ComponentItem.new(
  title: "Crepes",
  description: "Must find the best crepe place... it's our mission!",
  component_id: 1
)
component_item2.save!

component_item3 = ComponentItem.new(
  title: "Park Güell",
  description: "Beautiful outdoor park in Barcelona",
  component_id: 6
)
component_item3.save!

component_item4 = ComponentItem.new(
  title: "LoLe Wine And Tapas Bar",
  description: "Cute little wine bar with the most delicious tapas",
  address: "Ul. Marka Andrijića 15, 20260, Korčula, Croatia",
  component_id: 7
)
component_item4.save!

component_item5 = ComponentItem.new(
  title: "Yosemite Valley Loop Trail",
  description: "Beautiful views, and moderate hiking level, a must do!",
  component_id: 18
)
component_item5.save!

component_item6 = ComponentItem.new(
  title: "Yosemite Falls",
  description: "Beuatiful waterfalls, that are a must see!",
  image_url:"https://lh5.googleusercontent.com/p/AF1QipOi9zzG2HPjISNYN1QWtB3oGK0rDqiEy3Py0m5u=w408-h272-k-no",
  address: "Yosemite Village, CA 95389, United States",
  component_id: 18
)
component_item6.save!

component_item7 = ComponentItem.new(
  title: "Pa'rus Trail Zion National Park",
  description: "Beautiful paved trail, super bike friendly as well",
  component_id: 11
)
component_item7.save!

component_item8 = ComponentItem.new(
  title: "Sotelos Mexican Food",
  description: "Creative mexican dishes and cocktails",
  address: "1101 Zion – Mount Carmel Hwy, Springdale, UT 84767, United States",
  component_id: 10
)
component_item8.save!

component_item9 = ComponentItem.new(
  title: "Main Street Café",
  description: "Homey, comfort food, with vegan options",
  address: "138 Main St, Hurricane, UT 84737, United States",
  component_id: 10
)
component_item9.save!

component_item10 = ComponentItem.new(
  title: "Mammoth Hot Springs",
  description: "Famous Yellowstone attraction known for its terrace-like cascade of steaming travertine pools.",
  image_url: "https://lh5.googleusercontent.com/proxy/oWJ-ZxnnCHCiRC0SZ2ftJpDjncSaUB8CFTUHlaSZYjfZ-D9IUEjel-xtp1ExYS4d1yjj4btQXD80Zv7vFzRUy9MDx7gztDbDplrhe4nuAsGVkkokar8-pRxkSbh8HtgGKOJxAZxEpBQfkebudWd-9RJt6UGEUOU=w408-h306-k-no",
  address: "Yellowstone National Park, WY 82190, United States",
  component_id: 14
)
component_item10.save!

component_item11 = ComponentItem.new(
  title: "Slippery Otter Pub",
  description: "Roomy, livily hangout spot, good beers and food",
  address: "139 N Canyon St, West Yellowstone, MT 59758, United States",
  component_id: 15
)
component_item11.save!

