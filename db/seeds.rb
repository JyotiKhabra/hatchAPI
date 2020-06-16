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
  title: "European Adventure",
  description: "Escargot, Bolognese & Tapas... Oh my!",
  start_date: "July 22 2020",
  end_date: "August 1 2020"
)
trip1.save!




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
  title: "Bars",
  destination_id: 1
)
component2.save!

component3 = Component.new(
  title: "Entertainment",
  destination_id: 1
)
component3.save!

component4 = Component.new(
  title: "Parks",
  destination_id: 1
)
component4.save!

component5 = Component.new(
  title: "Shopping",
  destination_id: 1
)
component5.save!

component6 = Component.new(
  title: "Restaurants",
  destination_id: 2
)
component6.save!

component7 = Component.new(
  title: "Sights to See",
  destination_id: 2
)
component7.save!

component8 = Component.new(
  title: "Entertainment",
  destination_id: 2
)
component8.save!

component9 = Component.new(
  title: "Day Trips",
  destination_id: 3
)
component9.save!

component10 = Component.new(
  title: "Museums",
  destination_id: 3
)
component10.save!

component11 = Component.new(
  title: "Pasta",
  destination_id: 3
)
component11.save!


##component_items

component_item1 = ComponentItem.new(
  title: "Hardware Societe Paris",
  description: "Best french toast in all the land!!!",
  image_url: "https://lh5.googleusercontent.com/p/AF1QipNVU0mVAGdqg2LCT-K-1fsZr7zKI3j2o7NemJr2=w408-h306-k-no",
  address: "The Hardware Société Paris, Rue Lamarck, Paris, France",
  component_id: 1
)
component_item1.save!


component_item2 = ComponentItem.new(
  title: "Disfrutar Barcelona",
  description: "Amazing fine dining, great ambience and reasonable prices!",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x12a4a285bbc62c4d%3A0xcd8a70d67beb3993!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMgji_Bfa0kdX5eXv0tccApnZL7mCMYPWL2uavF%3Dw130-h87-n-k-no!5srestaurants%20in%20barcelona%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMgji_Bfa0kdX5eXv0tccApnZL7mCMYPWL2uavF#",
  address: "Carrer de Villarroel, 163, 08036 Barcelona, Spain",
  component_id: 6
)
component_item2.save!


component_item3 = ComponentItem.new(
  title: "La Gastronomica",
  description: "Amazing food, super friendly service.H ighly recommend. Get there early!",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x12a4a27b5dd2a67b%3A0xf87a13373431814d!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMRUmP1g5XFLsV97QbGMGzG82QC_G796PjQl7U4%3Dw130-h87-n-k-no!5srestaurants%20in%20barcelona%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMRUmP1g5XFLsV97QbGMGzG82QC_G796PjQl7U4#",
  address: "15, Carrer de Vilamarí, 9, 08015 Barcelona, Spain",
  component_id: 6
)
component_item3.save!


component_item4 = ComponentItem.new(
  title: "Santa Rita Experience",
  description: "You can watch them prepare the food! :) ",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x12a4a319376ecf77%3A0xe0968bfafc590237!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNfJ91CiGEcG1bn9FqimzXv9wfEjxtfjeTHC77r%3Dw130-h87-n-k-no!5srestaurants%20in%20barcelona%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNfJ91CiGEcG1bn9FqimzXv9wfEjxtfjeTHC77r#",
  address: "Carrer de Veneçuela, 16, 08019 Barcelona, Spain",
  component_id: 6
)
component_item4.save!


component_item5 = ComponentItem.new(
  title: "La Pepita",
  description: "Wonderful food and sangria, great service and very friendly staff!",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x12a4a2944850b897%3A0x183828567f4b693!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMIFHZIo1Lw8PjWE_X8x-m8zhwy1sFCZDk6Cawu%3Dw86-h87-n-k-no!5srestaurants%20in%20barcelona%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipN5ZUv4i0KYYot5OGbRiLw_Gru7sBVBPdpxEE4n#",
  address: "Carrer de Còrsega, 343, 08037 Barcelona, Spain",
  component_id: 6
)
component_item5.save!


component_item6 = ComponentItem.new(
  title: "La Sagrada Familia",
  description: "The Basílica de la Sagrada Família, also known as the Sagrada Família, is a large unfinished Roman Catholic minor basilica!",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x12a4a2dcd83dfb93%3A0x9bd8aac21bc3c950!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipPIX-4pTnweaJmdxPaej4lSzrRIEJJ9CuWDgEt3%3Dw128-h160-k-no!5sLa%20Sagrada%20Familia%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipPIX-4pTnweaJmdxPaej4lSzrRIEJJ9CuWDgEt3&sa=X&ved=2ahUKEwjZjrvokoXqAhWfJzQIHTbjBJQQoiowKHoECBoQBg#",
  address: " Carrer de Mallorca, 401, 08013 Barcelona, Spain",
  component_id: 7
)
component_item6.save!



component_item7 = ComponentItem.new(
  title: "Park Güell",
  description: "The Park Güell is a public park system composed of gardens and architectural elements located on Carmel Hill.",
  image_url: "https://lh4.googleusercontent.com/proxy/AXkza3z2HoZsSULdf3DHlRD-wUfFc3nCvz-N1AmHNxrnQDddHoQvhk5epRaP2gHnu4xCqzXJ2NQh1YiIqRV86AYjm2qqM-QdqYRKLJ-96ECOGeNaEFegZqXtGz7mzJCxR_3cCltDKlOBR1tpCgGzZpppGs3yrg=w408-h272-k-no",
  address: "08024 Barcelona, Spain",
  component_id: 7
)
component_item7.save!

component_item8 = ComponentItem.new(
  title: "Montjuïc",
  description: "Montjuïc is a hill in Barcelona, Catalonia, Spain",
  image_url: "https://www.google.com/maps/place/Montju%C3%AFc/@41.3640002,2.1674931,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipNKepuuG6bFDivHlxpHqkfkLXjU9WcY0v6bC1hg!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNKepuuG6bFDivHlxpHqkfkLXjU9WcY0v6bC1hg%3Dw203-h134-k-no!7i1390!8i923!4m7!3m6!1s0x12a4a24230e2aebd:0x116c63ebef94b50!8m2!3d41.3640002!4d2.1674931!14m1!1BCgIgAQ?hl=en#",
  address: "08038 Barcelona, Spain",
  component_id: 7
)
component_item8.save!

component_item9 = ComponentItem.new(
  title: "Camp Nou",
  description: "Camp Nou has been the home stadium of FC Barcelona since its completion in 1957!",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x12a498f576297baf%3A0x44f65330fe1b04b9!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipPZnoPLZfLu-KwC0Xygt-_8Nz81EEtUqTjpGKkD%3Dw284-h160-k-no!5sCamp%20Nou%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipN06WVWsIh2Q4lylHCJqNnZv29lcg6Ne2gIQ2wp&sa=X&ved=2ahUKEwjnxs6clIXqAhWxHzQIHe7RC8sQoiowKHoECBcQBg#",
  address: "C. d'Arístides Maillol, 12, 08028 Barcelona, Spain",
  component_id: 7
)
component_item9.save!

component_item10 = ComponentItem.new(
  title: "Barceloneta Beach",
  description: "Bustling spot for sunbathing & swimming!",
  image_url: "https://www.google.com/maps/place/Barceloneta+Beach/@41.3783704,2.1924698,3a,96.1y,90t/data=!3m8!1e2!3m6!1sAF1QipNbdh6W9ZrSmaSU4cbZktKbxZ0ToUCMrG1d9INI!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNbdh6W9ZrSmaSU4cbZktKbxZ0ToUCMrG1d9INI%3Dw203-h135-k-no!7i675!8i450!4m15!1m7!3m6!1s0x12a4a3a809389627:0x1e8e0ed73f4965fb!2sBarceloneta+Beach!3b1!8m2!3d41.3783713!4d2.1924685!3m6!1s0x12a4a3a809389627:0x1e8e0ed73f4965fb!8m2!3d41.3783713!4d2.1924685!14m1!1BCgIgAQ?hl=en#",
  address: "Passeig Marítim de la Barceloneta, s/n, 08003 Barcelona, Spain",
  component_id: 8
)
component_item10.save!

component_item11 = ComponentItem.new(
  title: "Picasso Museum",
  description: "Houses one of the most extensive collections of artworks by the 20th-century Spanish artist Pablo Picasso",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x12a4a2fe99bce26b%3A0x27011e710700cc63!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipOlzeiTb1h_RrePsRy2It6lqxr8Etb3WD4otY3F%3Dw120-h160-k-no!5sPicasso%20Museum%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipN3RQQHdSX9wI1Pe9fw6Zd8V3SOApMF7-8sH0h6&sa=X&ved=2ahUKEwik2sr4lYXqAhW0MX0KHYKNCHgQoiowJHoECB0QBg#",
  address: "Carrer Montcada, 15-23, 08003 Barcelona, Spain",
  component_id: 8
)
component_item11.save!

component_item12 = ComponentItem.new(
  title: "Jardins del Palau de Pedralbes",
  description: "City park with a palace & gardens.",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x12a4985a14496bcd%3A0xd1a02c03cb3b6822!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMNZjUWgvUY2XurwtHXCj6ogZZSYAbaGi0qQYXt%3Dw213-h160-k-no!5sJardins%20del%20Palau%20de%20Pedralbes%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMNZjUWgvUY2XurwtHXCj6ogZZSYAbaGi0qQYXt&sa=X&ved=2ahUKEwi7kdmwloXqAhXAJTQIHQjUD_AQoiowE3oECBkQBg#",
  address: "Avinguda Diagonal, 686, 08034 Barcelona, Spain",
  component_id: 8
)
component_item12.save!




#rome seeds 

component_item30 = ComponentItem.new(
  title: "Vatican City",
  description: "Home to the pope."
  image_url: "https://images.pexels.com/photos/3892129/pexels-photo-3892129.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  address: "Città del Vaticano 00120 Vatican City",
  component_id: 9
)
component_item30.save!

component_item31 = ComponentItem.new(
  title: "Cinque Terre",
  description: "Would love to rent a boat here."
  image_url: "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  address: "Province of La Spezia",
  component_id: 9
)
component_item31.save!


component_item32 = ComponentItem.new(
  title: "Amalfi Coast",
  description: "Lots of stairs, we better get in shape!"
  image_url: "https://images.pexels.com/photos/1296200/pexels-photo-1296200.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  address: "Costiera Amalfitana",
  component_id: 9
)
component_item32.save!



component_item33 = ComponentItem.new(
  title: "Tuscany",
  description: "Wine tour?"
  image_url: "https://images.pexels.com/photos/51947/tuscany-grape-field-nature-51947.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  component_id: 9
)
component_item33.save!


component_item34 = ComponentItem.new(
  title: "Borghese",
  image_url: "https://images.pexels.com/photos/21264/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  address: "Piazzale Scipione Borghese, 5, 00197 Roma RM, Italy",
  component_id: 10
)
component_item34.save!

component_item35 = ComponentItem.new(
  title: "Pantheon",
  image_url: "https://images.pexels.com/photos/2676602/pexels-photo-2676602.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  address: "Piazza della Rotonda, 00186 Roma RM, Italy",
  component_id: 10
)
component_item35.save!

component_item35 = ComponentItem.new(
  title: "National Roman Museum",
  image_url: "https://images.pexels.com/photos/615344/julius-caesar-rome-roman-empire-615344.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  address: "Viale Enrico de Nicola, 78, 00185 Roma RM, Italy",
  component_id: 10
)
component_item35.save!


component_item36 = ComponentItem.new(
  title: "National Gallery of Modern and Contemporary Art",
  image_url: "https://images.pexels.com/photos/1573434/pexels-photo-1573434.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "I've heard great things about this museum! Something different."
  component_id: 10
)
component_item36.save!

component_item37 = ComponentItem.new(
  title: "Cantina e Cucina",
  image_url: "https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Carbonara on my mind."
  address: "Via del Governo Vecchio, 87, 00186 Roma RM, Italy"
  component_id: 11
)
component_item37.save!

component_item38 = ComponentItem.new(
  title: "La Tavernaccia",
  image_url: "https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Black truffle sauce? Yes."
  address: "Via Giovanni da Castel Bolognese, 63, 00153 Roma RM, Italy"
  component_id: 11
)
component_item38.save!

component_item39 = ComponentItem.new(
  title: "Roscioli Salumeria con Cucina",
  image_url: "https://images.pexels.com/photos/1352271/pexels-photo-1352271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "At least for dessert!"
  address: "Via dei Giubbonari, 21, 00186 Roma RM, Italy"
  component_id: 11
)
component_item39.save!


component_item40 = ComponentItem.new(
  title: "Roscioli Salumeria con Cucina",
  image_url: "https://images.pexels.com/photos/1398688/pexels-photo-1398688.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "There is nothing wrong with eating pasta every day in Italy!"
  address: "Piazzale Aurelio, 7, 00152 Roma RM, Italy"
  component_id: 11
)
component_item40.save!

#paris seeds

component_item41 = ComponentItem.new(
  title: "Le Syndicat",
  image_url: "https://images.pexels.com/photos/1189257/pexels-photo-1189257.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Mixology spot."
  address: "51 Rue du Faubourg Saint-Denis, 75010 Paris, France"
  component_id: 2
)
component_item41.save!

component_item42 = ComponentItem.new(
  title: "Billili",
  image_url: "https://images.pexels.com/photos/774455/pexels-photo-774455.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=5000",
  description: "Wine bar."
  address: "136 Rue du Faubourg Poissonnière, 75010 Paris, France"
  component_id: 2
)
component_item42.save!

component_item43 = ComponentItem.new(
  title: "Combat",
  image_url: "https://images.pexels.com/photos/3793319/pexels-photo-3793319.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Great view."
  address: "63 Rue de Belleville, 75019 Paris, France"
  component_id: 2
)
component_item43.save!

component_item44 = ComponentItem.new(
  title: "Lulu White",
  image_url: "https://images.pexels.com/photos/3771819/pexels-photo-3771819.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Absinthe laced cocktail? Yes please."
  address: "12 Rue Frochot, 75009 Paris, France"
  component_id: 2
)
component_item44.save!
