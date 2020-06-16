# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## Users

user1 = User.new(
  name: 'Stacey Keating',
  email: "staceyamberkk@gmail.com",
  password_digest: "password"
)

user1.save!

user2 = User.new(
  name: 'Joey Kishiuchi',
  email: "joey.kishiuchi@example.com",
  password_digest: "password"
)

user2.save!

user3 = User.new(
  name: 'Jyoti Khabra',
  email: "jyoti.khabra@example.com",
  password_digest: "password"
)

user3.save!

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
  user_id: 1,
  trip_id: 1
)
collaborator1.save!

collaborator2 = Collaborator.new(
  user_id: 2,
  trip_id: 1
)
collaborator2.save!

collaborator3 = Collaborator.new(
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


packing_item4 = PackingItem.new(
  description: "Walking shoes",
  trip_id: 1
)
packing_item4.save!

packing_item5 = PackingItem.new(
  description: "Formal dress",
  trip_id: 1
)
packing_item5.save!


packing_item6 = PackingItem.new(
  description: "Makeup bag",
  trip_id: 1
)
packing_item6.save!

packing_item7 = PackingItem.new(
  description: "Headphones",
  trip_id: 1
)
packing_item7.save!

packing_item8 = PackingItem.new(
  description: "Camera",
  trip_id: 1
)

packing_item8.save!

packing_item9 = PackingItem.new(
  description: "Money belt",
  trip_id: 1
)

packing_item9.save!
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
  title: "Touristy Musts",
  destination_id: 1
)
component3.save!

component4 = Component.new(
  title: "Museums",
  destination_id: 1
)
component4.save!

component5 = Component.new(
  title: "Markets",
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

#barcelona 

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
  description: "Amazing food, super friendly service. Highly recommend. Get there early!",
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

#paris 

component_item1 = ComponentItem.new(
  title: "Hardware Societe Paris",
  description: "Best french toast in all the land!!!",
  image_url: "https://lh5.googleusercontent.com/p/AF1QipNVU0mVAGdqg2LCT-K-1fsZr7zKI3j2o7NemJr2=w408-h306-k-no",
  address: "The Hardware Société Paris, Rue Lamarck, Paris, France",
  component_id: 1
)
component_item1.save!

component_item13 = ComponentItem.new(
  title: "Patchanka",
  description: "Delicious food!",
  image_url: "https://www.google.com/maps/place/Patchanka/@48.8615176,2.3706234,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipPEU9dPKdMHfqgqPzwNEB0pR899UM3q_D124W5d!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipPEU9dPKdMHfqgqPzwNEB0pR899UM3q_D124W5d%3Dw129-h86-k-no!7i2304!8i1536!4m8!1m2!2m1!1srestaurants+in+paris!3m4!1s0x47e66dfc30c37ce9:0x19977e019bb1eb24!8m2!3d48.861559!4d2.3705985#",
  address: "33-35 Rue Saint-Sébastien, 75011 Paris, France",
  component_id: 1
)
component_item13.save!

component_item14 = ComponentItem.new(
  title: "Epicure",
  description: "Perfect little homey place to grab a bite.",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x47e66feaaa07e555%3A0xd52e77609ee2730c!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNl-ZGwm9huun__I8cq0FUreU23KRXg0-COv3PJ%3Dw260-h175-n-k-no!5splaces%20to%20eat%20in%20paris%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNl-ZGwm9huun__I8cq0FUreU23KRXg0-COv3PJ#",
  address: "112 Rue du Faubourg Saint-Honoré, 75008 Paris, France",
  component_id: 1
)
component_item14.save!

component_item15 = ComponentItem.new(
  title: "Guy Savoy",
  description: "Beautiful fine dining!",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x47e66fec9f9184eb%3A0x240145c04a25b01f!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMxV73LYXwqB1XN52A-xC1idL03V3d9_3b17XVO%3Dw130-h87-n-k-no!5splaces%20to%20eat%20in%20paris%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMxV73LYXwqB1XN52A-xC1idL03V3d9_3b17XVO#",
  address: "Monnaie de Paris, 11 Quai de Conti, 75006 Paris, France",
  component_id: 1
)
component_item15.save!

component_item16 = ComponentItem.new(
  title: "Eiffel Tower",
  description: "The Eiffel Tower!!!! Must see and have a picnic here!",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipP8E1nOUwx73CrO0pnZzHTk_O3dTyfzbN6aWnYt%3Dw254-h160-k-no!5sEiffel%20Tower%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipP8E1nOUwx73CrO0pnZzHTk_O3dTyfzbN6aWnYt&sa=X&ved=2ahUKEwjj6oHcnYXqAhVSj54KHTFXAfAQoiowIHoECB4QBg#",
  address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France",
  component_id: 3
)
component_item16.save!

component_item17 = ComponentItem.new(
  title: "Sacré-Cœur",
  description: "The Basilica of the Sacred Heart of Paris",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x47e66e4334868de3%3A0xcfc3870abe2b8519!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipN36eRxqmJpAghaLYIBF4tgas65GUtGodYOEJtZ%3Dw135-h160-k-no!5sSacr%C3%A9-C%C5%93ur%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipN36eRxqmJpAghaLYIBF4tgas65GUtGodYOEJtZ&sa=X&ved=2ahUKEwiO6JaKnoXqAhVSjp4KHXojB_gQoiowH3oECBsQBg#",
  address: "35 Rue du Chevalier de la Barre, 75018 Paris, France",
  component_id: 3
)
component_item17.save!


component_item18 = ComponentItem.new(
  title: "Arc de Triomphe",
  description: "The Arc de Triomphe de l'Étoile is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées.",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x47e66fec70fb1d8f%3A0xd9b5676e112e643d!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipPcaaqlW7RUrEPFc57Vzb_DTEsVp-9TZRVjbPYg%3Dw244-h160-k-no!5sArc%20de%20Triomphe%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipOjE8d0LhzjBgGUtyhZi4eChBkXZJEjgUhjA-vO&sa=X&ved=2ahUKEwiJhpi2noXqAhVUuZ4KHdJNA_gQoiowIHoECB0QBg#",
  address: "Place Charles de Gaulle, 75008 Paris, France",
  component_id: 3
)
component_item18.save!


component_item19 = ComponentItem.new(
  title: "Cathédrale Notre-Dame de Paris",
  description: "BThe cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture.",
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x47e671e19ff53a01%3A0x36401da7abfa068d!3m1!7e115!4shttps%3A%2F%2Fwww.trover.com%2Fd%2F1p9Ws-cath%25C3%25A9drale-notre-dame-de-paris-paris-france!5sCath%C3%A9drale%20Notre-Dame%20de%20Paris%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e1!2shttps%3A%2F%2Fmedia2.trover.com%2FT%2F5ae608962c2e91d002045396%2Ffixedw.jpg&sa=X&ved=2ahUKEwi6mIj8noXqAhUW7J4KHR9JDPAQoiowJ3oECB0QBg#",
  address: "6 Parvis Notre-Dame - Pl. Jean-Paul II, 75004 Paris, France",
  component_id: 3
)
component_item19.save!

component_item20 = ComponentItem.new(
  title: "Palace of Versailles",
  description: "The Palace of Versailles was the principal royal residence of France from 1682, under Louis XIV." ,
  image_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x47e67d94d7b14c75%3A0x538fcc15f59ce8f!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipM36q9Nc6foEMgY5Q3a2wCR9bmdUiRH_Rff7Lms%3Dw213-h160-k-no!5sPalace%20of%20Versailles%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMxnPZ2mQvxXetRYF4nTifnXwnZbHpwX2z934zs&sa=X&ved=2ahUKEwji-eWon4XqAhWSvp4KHbC0C_gQoiowJ3oECBoQBg#",
  address: "Place d'Armes, 78000 Versailles, France",
  component_id: 3
)
component_item20.save!


#rome seeds

component_item30 = ComponentItem.new(
  title: "Vatican City",
  description: "Home to the pope.",
  image_url: "https://images.pexels.com/photos/3892129/pexels-photo-3892129.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  address: "Città del Vaticano 00120 Vatican City",
  component_id: 9
)
component_item30.save!

component_item31 = ComponentItem.new(
  title: "Cinque Terre",
  description: "Would love to rent a boat here.",
  image_url: "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  address: "Province of La Spezia",
  component_id: 9
)
component_item31.save!


component_item32 = ComponentItem.new(
  title: "Amalfi Coast",
  description: "Lots of stairs, we better get in shape!",
  image_url: "https://images.pexels.com/photos/1296200/pexels-photo-1296200.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  address: "Costiera Amalfitana",
  component_id: 9
)
component_item32.save!



component_item33 = ComponentItem.new(
  title: "Tuscany",
  description: "Wine tour?",
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
  description: "I've heard great things about this museum! Something different.",
  component_id: 10
)
component_item36.save!

component_item37 = ComponentItem.new(
  title: "Cantina e Cucina",
  image_url: "https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Carbonara on my mind.",
  address: "Via del Governo Vecchio, 87, 00186 Roma RM, Italy",
  component_id: 11
)
component_item37.save!

component_item38 = ComponentItem.new(
  title: "La Tavernaccia",
  image_url: "https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Black truffle sauce? Yes.",
  address: "Via Giovanni da Castel Bolognese, 63, 00153 Roma RM, Italy",
  component_id: 11
)
component_item38.save!

component_item39 = ComponentItem.new(
  title: "Roscioli Salumeria con Cucina",
  image_url: "https://images.pexels.com/photos/1352271/pexels-photo-1352271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "At least for dessert!",
  address: "Via dei Giubbonari, 21, 00186 Roma RM, Italy",
  component_id: 11
)
component_item39.save!


component_item40 = ComponentItem.new(
  title: "Roscioli Salumeria con Cucina",
  image_url: "https://images.pexels.com/photos/1398688/pexels-photo-1398688.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "There is nothing wrong with eating pasta every day in Italy!",
  address: "Piazzale Aurelio, 7, 00152 Roma RM, Italy",
  component_id: 11
)
component_item40.save!

#paris

component_item41 = ComponentItem.new(
  title: "Le Syndicat",
  image_url: "https://images.pexels.com/photos/1189257/pexels-photo-1189257.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Mixology spot.",
  address: "51 Rue du Faubourg Saint-Denis, 75010 Paris, France",
  component_id: 2
)
component_item41.save!

component_item42 = ComponentItem.new(
  title: "Billili",
  image_url: "https://images.pexels.com/photos/774455/pexels-photo-774455.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=5000",
  description: "Wine bar.",
  address: "136 Rue du Faubourg Poissonnière, 75010 Paris, France",
  component_id: 2
)
component_item42.save!

component_item43 = ComponentItem.new(
  title: "Combat",
  image_url: "https://images.pexels.com/photos/3793319/pexels-photo-3793319.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Great view.",
  address: "63 Rue de Belleville, 75019 Paris, France",
  component_id: 2
)
component_item43.save!

component_item44 = ComponentItem.new(
  title: "Lulu White",
  image_url: "https://images.pexels.com/photos/3771819/pexels-photo-3771819.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Absinthe laced cocktail? Yes please.",
  address: "12 Rue Frochot, 75009 Paris, France",
  component_id: 2
)
component_item44.save!


component_item45 = ComponentItem.new(
  title: "Marché aux Fleurs",
  image_url: "https://images.pexels.com/photos/250716/pexels-photo-250716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Circa 1808 flower market.",
  address: "37 Place Louis Lépine, 75004 Paris, France",
  component_id: 5
)
component_item45.save!

component_item46 = ComponentItem.new(
  title: "Les Puces de Saint-Ouen",
  image_url: "https://images.pexels.com/photos/250716/pexels-photo-250716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "One of the oldest flea markets.",
  address: "142 Rue des Rosiers, 93400 Saint-Ouen, France",
  component_id: 5
)
component_item46.save!

component_item47 = ComponentItem.new(
  title: "Le Marché du Livre",
  image_url: "https://img.theculturetrip.com/1440x960/smart/wp-content/uploads/2019/02/bj8nfx.jpg",
  description: "Weekly book market, tres cute.",
  address: "104 Rue Brancion, 75015 Paris, France",
  component_id: 5
)
component_item47.save!

component_item48 = ComponentItem.new(
  title: "Le Marché Bastille",
  image_url: "https://images.pexels.com/photos/1070985/pexels-photo-1070985.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  description: "If there's only time for one this is it.",
  address: "Place de la Bastille, 75011 Paris, France",
  component_id: 5
)
component_item48.save!


component_item49 = ComponentItem.new(
  title: "Louvre",
  image_url: "https://images.pexels.com/photos/2363/france-landmark-lights-night.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "What's behind Mona Lisa's smile?",
  address: "Rue de Rivoli, 75001 Paris, France",
  component_id: 4
)
component_item49.save!

component_item50 = ComponentItem.new(
  title: "Musée d'Orsay",
  image_url: "https://images.pexels.com/photos/208636/pexels-photo-208636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  description: "Beaux-Arts railway station built between 1898 and 1900 turned art gallery",
  address: "1 Rue de la Légion d'Honneur, 75007 Paris, France",
  component_id: 4
)
component_item50.save!

component_item51 = ComponentItem.new(
  title: "Palais de Tokyo",
  image_url: "https://www.museeum.com/wp-content/uploads/2017/05/Palais_de_Tokyo_@_Paris_31028565970.jpg",
  description: "Modern and contemporary art",
  address: "13 Avenue du Président Wilson, 75116 Paris, France ",
  component_id: 4
)
component_item51.save!
