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
  password: "password",
  avatar: "#6f5782"
)

user1.save!

user2 = User.new(
  name: 'Joey Kishiuchi',
  email: "josephkishiuchi@gmail.com",
  password: "password",
  avatar: "#d6b0d6"
)

user2.save!

user3 = User.new(
  name: 'Jyoti Khabra',
  email: "khabra.jyoti@gmail.com",
  password: "password",
  avatar: "#9e5454"
)

user3.save!

user4 = User.new(
  name: 'John Smith',
  email: "john.smith@example.com",
  password: "password",
  avatar: "#a7cdcf"
)

user4.save!

user5 = User.new(
  name: "Kerry Oki",
  email: "kerry.oki@example.com",
  password: "password",
  avatar: "#d1a773"
)

user5.save!


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
collaborator3.save!

##packing_items

packing_item1 = PackingItem.new(
  description: "Sunnies",
  trip_id: 1,
  user_id: 2
)
packing_item1.save!

packing_item2 = PackingItem.new(
  description: "Passport",
  trip_id: 1,
  user_id: 1
)
packing_item2.save!

packing_item3 = PackingItem.new(
  description: "Book",
  trip_id: 1,
  user_id: 3
)
packing_item3.save!


packing_item4 = PackingItem.new(
  description: "Walking shoes",
  trip_id: 1,
  user_id: 2
)
packing_item4.save!

packing_item5 = PackingItem.new(
  description: "Formal dress",
  trip_id: 1,
  user_id: 3
)
packing_item5.save!


packing_item6 = PackingItem.new(
  description: "Makeup bag",
  trip_id: 1,
  user_id: 1
)
packing_item6.save!

packing_item7 = PackingItem.new(
  description: "Headphones",
  trip_id: 1,
  user_id: 1
)
packing_item7.save!

packing_item8 = PackingItem.new(
  description: "Camera",
  trip_id: 1,
  user_id: 2
)

packing_item8.save!

packing_item9 = PackingItem.new(
  description: "Money belt",
  trip_id: 1,
  user_id: 3
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
  title: "Disfrutar",
  description: "Amazing fine dining, great ambience and reasonable prices!",
  image_url: "CmRaAAAAsc1lVGL18XdGKC41UUWjpH1MeRHXafaA4wvSCY72aKl59k5A1tN9GSytqUllkubIR23WUy8-yiGeHSG6U7BppBzCkPmCg_R51AO0P35uNAjx2FeePtWCf5SP_Ff23-g-EhDktF2nIqS1TQm90zdIhas4GhSQLHjyJpHd_upQntlW6hElgx81Kg",
  address: "Carrer de Villarroel, 163, 08036 Barcelona, Spain",
  component_id: 6,
  user_id: 1
)
component_item2.save!


component_item3 = ComponentItem.new(
  title: "La Gastronomica",
  description: "Amazing food, super friendly service. Highly recommend. Get there early!",
  image_url: "CmRaAAAA7Xc-qPUXP50wIAq8N6zV9ZRAJ4cRMG_FG3usHMjGSxKItOB9Nq7rprAETIFlKmOVQMzj6Gq7aesVPCsnZjsdWzUj3t5q1_zhGqIvNkEohcax7SYu2BHZeHlbmZIpt0VYEhAYR0kMQiPg5WUySsw9G7pdGhQN1-vNr2MfmWblm3NCM-RDP2JcnA",
  address: "15, Carrer de Vilamarí, 9, 08015 Barcelona, Spain",
  component_id: 6,
  user_id: 1
)
component_item3.save!


component_item4 = ComponentItem.new(
  title: "Santa Rita Experience",
  description: "You can watch them prepare the food! :) ",
  image_url: "CmRaAAAA5fzQkeBc_ejRScGJPrfv1-JnAESkczzNmCNvtmh1NEogfgOY_iYc1denL7v2zcVq3MYAnZHIhx27ZSGPMwcFQWGyFWElc_t1FjK3BqibjKtaPPjqbNKzca9zGn5b0jZ7EhDxpCrdVqgqUXOjdcS2SEiQGhRpGOQ90S-NHQ7Bb8Td5ZuZXDNB3Q",
  address: "Carrer de Veneçuela, 16, 08019 Barcelona, Spain",
  component_id: 6,
  user_id: 2

)
component_item4.save!


component_item5 = ComponentItem.new(
  title: "La Pepita",
  description: "Wonderful food and sangria, great service and very friendly staff!",
  image_url: "CmRaAAAAm9KdvDxU7pP5oW01GZGNncgL4Uhzdpk9uYXA66UzOTRg8A1eow_Gd7hUZ_czz_pwROYV5jHnLLEO-GUjQLP7WkXTAeqWrITG-n4Tni4dkWrOOeSGhcXtBxVJOHPOJRcqEhBbkV048juv4YsIpMZj7y-ZGhQ-NqWXkEYRH1ipBXrm6fmOmq7XUA",
  address: "Carrer de Còrsega, 343, 08037 Barcelona, Spain",
  component_id: 6,
  user_id: 2
)
component_item5.save!


component_item6 = ComponentItem.new(
  title: "La Sagrada Familia",
  description: "The Basílica de la Sagrada Família, also known as the Sagrada Família, is a large unfinished Roman Catholic minor basilica!",
  image_url: "CmRaAAAAYxypEeOQemevCL1GJFVp72El9_ulX8NejKv6f6JlLbYBIfMunEe5zkc-3IXYPxUFKg9oXsG5BNgI4_nHqRFKIa5e7bBGTfLCa1FeVQH8BQYAJSegBVTBZy3g0qvlLepmEhCI5v_ttUAZBj6KtFW3bo8yGhTohPjfRt9gIkDsFiyFx2OAHJ6sVQ",
  address: "Carrer de Mallorca, 401, 08013 Barcelona, Spain",
  component_id: 7,
  user_id: 3
)
component_item6.save!



component_item7 = ComponentItem.new(
  title: "Park Güell",
  description: "The Park Güell is a public park system composed of gardens and architectural elements located on Carmel Hill.",
  image_url: "CmRaAAAAarSaIGvIfm_3MPt5bvLx3XNfubiXSjelMzHPB96vSo-V6b3b8CBGEh_zTTGWKSanN2gN0dIAHs-77Wk8SX2n574o8MYwtHvog0lnQZHcazxvrBXCli0fSGtdwFdUGjEHEhBc3LaPaTqAuoxWUO_MWeKXGhS7BjmTH1J9WYJGW9qPF1H9YEcxOg",
  address: "08024 Barcelona, Spain",
  component_id: 7,
  user_id: 3

)
component_item7.save!

component_item8 = ComponentItem.new(
  title: "Montjuïc",
  description: "Montjuïc is a hill in Barcelona, Catalonia, Spain",
  image_url: "CmRaAAAAoeV7RcB6N4fjCdrcbO149DTx00iprdcK0ZRBmmBlZlL-DmmP3phDBIPPFzxPy017RUjKAG-575PTqMaMLSUj2-PvJ23mxIvuYlZsKcM-GkjRvJFBY0G96tQCcFE8xWayEhAnS8drlh9-M30eBIMFUX4AGhQBuMnsnVPJIZYfz1P5haanfQJYJA",
  address: "08038 Barcelona, Spain",
  component_id: 7,
  user_id: 1

)
component_item8.save!

component_item9 = ComponentItem.new(
  title: "Camp Nou",
  description: "Camp Nou has been the home stadium of FC Barcelona since its completion in 1957!",
  image_url: "CmRaAAAA4PK2vSXV0vgnth1y-sjf4EcV85A9jiqKJAOmy3Rdw516aWcbyMokpQBCr0HjO2EU_z25FdbAVGPT9wo6-gXDgzn4wakDXQ5gouEhXnwBDL2D-WsJTAcgBi8SNMMU9AK0EhBjbZGPEQ5DCB-VLlyxbdN6GhSPtdJ-RsgAe6L-oelp86RTi_cq2g",
  address: "C. d'Arístides Maillol, 12, 08028 Barcelona, Spain",
  component_id: 7,
  user_id: 1

)
component_item9.save!

component_item10 = ComponentItem.new(
  title: "Barceloneta Beach",
  description: "Bustling spot for sunbathing & swimming!",
  image_url: "CmRaAAAAcwFgUVD6OdAXDtJ7Zfp2qnaBXpYFNSp-lw9biyxbtwVgsOEKGNG_FHGXDbdQCct-q-TrBW07NWnPw2eLvRrcFNawqyH5K713lPGZ_aS4rDnXb3XqoFBjoCX5pZXPHmVMEhAEmPd1meBd7lveo9GNUGZyGhT50aN4xOBDS0KXVBFrEk75Igy7rQ",
  address: "Passeig Marítim de la Barceloneta, s/n, 08003 Barcelona, Spain",
  component_id: 8,
  user_id: 1

)
component_item10.save!

component_item11 = ComponentItem.new(
  title: "Picasso Museum",
  description: "Houses one of the most extensive collections of artworks by the 20th-century Spanish artist Pablo Picasso",
  image_url:"CmRaAAAAJAgEx3QFvSVfcQ95SOKFFfZVMLutcpOeHHiKD49lwsJwLC8uaaprU-7F7Cyb9hpy5tghcA6w7xiqFDqlIWPtUH0WxnYm8JhIpCshu3mn3iPQgjBfPqsiNQPmhpPGE8vXEhDtpAvjKj8QTC03Ad8vyPISGhRWFwUVwZbAeP5nxKnIgpn3r_M18g",
  address: "Carrer Montcada, 15-23, 08003 Barcelona, Spain",
  component_id: 8,
  user_id: 2
)
component_item11.save!

component_item12 = ComponentItem.new(
  title: "Jardins del Palau de Pedralbes",
  description: "City park with a palace & gardens.",
  image_url:"CmRaAAAAs4xvbnGW4xJj64zyXBAyqmSCeeQHz6PwDNeMnFzaR36oDpX1gzYqQQ2m8t1Ag7w3hdPeffVHHbE3Kd0Ef5lAAfMkY2D8WXXTgwIx5XYLb-3-e5iYpZAEenr6r3DSy-BIEhCynoGXpmdx27ePKnUgseHaGhT_45S3anOI9eRoh-O7Ulwo6PbjsA",
  address: "Avinguda Diagonal, 686, 08034 Barcelona, Spain",
  component_id: 8,
  user_id: 2
)
component_item12.save!

#paris

component_item1 = ComponentItem.new(
  title: "Hardware Societe Paris",
  description: "Best french toast in all the land!!!",
  image_url: "CmRaAAAAMUIw5Tt0D-XwzjShmuNn--J1yA15GNEvluG3t70G8jkIHO-Wuyn86iKru_-kaEvg8q3F67X67PuhFyx3DtwGCwhsJJgIBRh25gs6dnaVkjuD6pMGUAPlDXSQa4KLRxzpEhA8Y49n5FlMnRp1s4egnp6UGhRPGPY46w88i1Le4UrU_-YpenKG1Q",
  address: "The Hardware Société Paris, Rue Lamarck, Paris, France",
  component_id: 1,
  user_id: 3
)
component_item1.save!

component_item13 = ComponentItem.new(
  title: "Patchanka",
  description: "Delicious food!",
  image_url:"CmRaAAAA07P48ck_D210DZ8InN-LQG2XHh2JA9u1xTor4a6n_SKC-7gxmeea758ogRQckvpQe4XJzd8jfXwMzV2KV3_vHEyJNnoWlFy2vIpfGv7gxHnXvkCN941u3WShygkFOKEUEhD4Vlo5x-laraNGOgAcvIsoGhRSlkRZlKiKkwhWAuEUSabYkyPdYQ",
  address: "33-35 Rue Saint-Sébastien, 75011 Paris, France",
  component_id: 1,
  user_id: 1

)
component_item13.save!

component_item14 = ComponentItem.new(
  title: "Epicure",
  description: "Perfect little homey place to grab a bite.",
  image_url: "CmRaAAAAal9S6v9XUjHkaG8tzvBp8fuvnHvPzUl2blcJeIWnPysaF1Yvqb0-A0jenbYhWlXRJlqZV6mJrY_JdIlSn8SwdeMhBFNYTYxeGaRvP8XVolOAueCSh3S0I1ZcBHOtQUKHEhDz2eA-NmJwwwQguF1QGI76GhTQmf86NgxbeFcnRK49GUpWV7RwjQ",
  address: "112 Rue du Faubourg Saint-Honoré, 75008 Paris, France",
  component_id: 1,
  user_id: 3

)
component_item14.save!

component_item15 = ComponentItem.new(
  title: "Guy Savoy",
  description: "Beautiful fine dining!",
  image_url: "CmRaAAAA6ewU-vazcc-oUSHBqE48lneW0OsIfM08qp-un-1YpFyXKW-IhIiAbXDJOqpRHK-Q2fIzbEKHtL7uQTe1O4K7DytQhhCH4lWTXmY56sgZF0Mdwj3_HpkmMaYVVtHKqptjEhD5IO-pJLvds7tdD-23oioLGhT3WtKDeBtCu3rd3Kmb7uU82pquuw",
  address: "Monnaie de Paris, 11 Quai de Conti, 75006 Paris, France",
  component_id: 1,
  user_id: 3

)
component_item15.save!

component_item16 = ComponentItem.new(
  title: "Eiffel Tower",
  description: "The Eiffel Tower!!!! Must see and have a picnic here!",
  image_url: "CmRaAAAAleMcmFFNAocOwEtQTY8eLzrB_jJUl9WpJk1LeawmTtFpThIe2qOGqLKl8w9yrUpyTDdXLEbvDJO3m8L7w279AtZMg5YN1YB2Wpr3RvedVZiWXza0AncseFhpjQDiaenJEhDBM1GTSFMV52zgQ5iq1A8JGhRgU5DhwDi0dBG_6F59NEKvUDBEzQ",
  address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France",
  component_id: 3,
  user_id: 3
)
component_item16.save!

component_item17 = ComponentItem.new(
  title: "Sacré-Cœur",
  description: "The Basilica of the Sacred Heart of Paris",
  image_url: "CmRaAAAAkqBQzQb5I8A7jw4HuTzCYzHTxv9ihx5_6qB3oN7hkT8JRztCl9VksVmMFsnzPw2gu0AEFVe1tiEdlE-rXy0ugoov5BY31u1437I4BMk5-9cqxlSk-cpfUxxZ4VcAJPlEEhBM2sr6M7PVYtxZIrXEmG-tGhT6Elgfbf5G8qZqoZu4V4LWpZBZ6A",
  address: "35 Rue du Chevalier de la Barre, 75018 Paris, France",
  component_id: 3,
  user_id: 1

)
component_item17.save!


component_item18 = ComponentItem.new(
  title: "Arc de Triomphe",
  description: "The Arc de Triomphe de l'Étoile is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées.",
  image_url: "CmRaAAAAfK_199Oc6Dll5EECqE1cOzUQtu3xErzRWGGwy3i3bIbQzRnF9zO8g4LBSxNlV039VLX08QoM8T1hLKP-zbKzzxCR_dXMf3NtFZqKrR0EyZYNX8btU_F8T14D2XDsAocvEhC9Lw-bsVB9DmWriueiW89yGhSpOTRy7xuLQsBzlzlqiOAqlWuzOg",
  address: "Place Charles de Gaulle, 75008 Paris, France",
  component_id: 3,
  user_id: 1

)
component_item18.save!


component_item19 = ComponentItem.new(
  title: "Cathédrale Notre-Dame de Paris",
  description: "BThe cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture.",
  image_url: "CmRaAAAAm5g5J0M6ZmodDOfSYQOKJd-Ij9pieQ3Q2eW7Lpu2QPdH-ukwQ7Gs5akOMfNQ2UQkTU_HNYcrEMk1lThENraC-kGV2nbDn3Buo4YKEd-ceKO76Py6KvlwYsTTIpbVKZ0aEhDklpWi-NfqbrQJNF0xe-KJGhR9aRIX-cQS0im72xWTUxje1jW_jw",
  address: "6 Parvis Notre-Dame - Pl. Jean-Paul II, 75004 Paris, France",
  component_id: 3,
  user_id: 2

)
component_item19.save!

component_item20 = ComponentItem.new(
  title: "Palace of Versailles",
  description: "The Palace of Versailles was the principal royal residence of France from 1682, under Louis XIV." ,
  image_url:"CmRaAAAASJcA30-DjqztnAHiZTOpioyFid6tlWoJZoDyYwO_xoqVfc_IPqJdoqc25o5dykZuerVEvsZ6j0-uZqA84VzJXo12VVOGWVdKLHURRQJTlUPwQLjmKYyV9chWoa7i1yHtEhAbfFjr3bfTGqGpllAHnhcrGhT79bU3p4gLOyil6KwCPuff-4VqdQ",
  address: "Place d'Armes, 78000 Versailles, France",
  component_id: 3,
  user_id: 2

)
component_item20.save!


#rome seeds

component_item30 = ComponentItem.new(
  title: "Vatican City",
  description: "Home to the pope.",
  image_url: "CmRaAAAAhrT7kw8CuMfsZwRPBMw_9SH5ydKW1z3mWGZAbr4OCu6r-KRj4ZnB5z0CUBoLNS5RZXSXaICEi9FSC0dkh3BoYywlUPGinudziOEJ3W5TIJAWSk5R8NSO6IthE75xhCFKEhBMMuKwLqOx8tu1D6kdi0uuGhRFKaZHD8-w2y4TBTLYc-U1yCy9Ng",
  address: "Città del Vaticano 00120 Vatican City",
  component_id: 9,
  user_id: 3

)
component_item30.save!

component_item31 = ComponentItem.new(
  title: "Cinque Terre",
  description: "Would love to rent a boat here.",
  image_url: "CmRaAAAAfMIMsO56Z1a08NfvveNqhqJg7OLT90tKY6Oz8vpj11V93LQ4XIUeImMKJ-Or-751d83CSZeN6gE5M210Pj8-VmISk1UhfmG_ZbwQlnhNL4HzPDIror0aqS2eEu30hdzhEhCwLtannQNb4YKma8lXYhwGGhTRWR9layrtKpIWDf57mjcr_ccTCg",
  address: "Province of La Spezia",
  component_id: 9,
  user_id: 3
)
component_item31.save!


component_item32 = ComponentItem.new(
  title: "Amalfi Coast",
  description: "Lots of stairs, we better get in shape!",
  image_url: "CmRaAAAABvrCO8L4KueFUEyEGAIyaPp27PJbDzzuAAAVJ2j5WNAxn4FqjNnldNHwnTIWbi9pllOY7acN1K3yIDjvsBCGL8Jr-mTky46fR31q1SY8Uo1Y2EcrheiNMvH0S24Q8F2PEhDhRNsfacTlxbbRugUMbpNiGhRv9ZeJ-PHvuSe69eC7x32CujQYxw",
  address: "Costiera Amalfitana",
  component_id: 9,
  user_id: 3

)
component_item32.save!



component_item33 = ComponentItem.new(
  title: "Tuscany",
  description: "Wine tour?",
  image_url: "CmRaAAAAGqZaqZL-A6hTKZhP_uSoujSuJmuqfy_wqcGH6Rqo4OtDAFfNURMlduRju0Dqge0M0LIoXEzRDHdSMS5WqE70su88ZtACZDB8kevV8-OL1n-uEEVzg99Gnlp2qFuj0DfOEhCRBiS6L84Muva0omkysjtsGhTqyBFEvrar1GLW8CMMc5bXMnu5YQ",
  component_id: 9,
  user_id: 3

)
component_item33.save!


component_item34 = ComponentItem.new(
  title: "Borghese",
  image_url: "CmRaAAAA-IrSawDeqJ9979NFkvKCmQvMlHpv4yfy5AmeYTpUAJrjHnOFkIO2rANg-Kf2GUUsUCQFqdEvC-YCEfrAoZ5Sk048duAJPSeJQRSl09WqAuAtcCdFX_cI0kTDs__WkfK2EhBmYhsEIDSYhRP6xiI7VnS4GhRriT7jIK5FjZzy-P_uYXB1B9jMSg",
  address: "Piazzale Scipione Borghese, 5, 00197 Roma RM, Italy",
  component_id: 10,
  user_id: 1

)
component_item34.save!

component_item35 = ComponentItem.new(
  title: "Pantheon",
  image_url: "CmRaAAAAzZX_n32rfnZXG5IbmKL67dE-BV7d7gF32UZxxPz-eWm5pD8K1ya8WrowEefxbEW1aTTA3KA9wWAtV6zliGe39Vnha8TKrKzYxPSpAW4_MLrSGJprfOrYU84SBkNQksUqEhA8AKgEfM7m2cgXIJp46WMuGhSsZE-9h06KApN4O1366NOwqZrldQ",
  address: "Piazza della Rotonda, 00186 Roma RM, Italy",
  component_id: 10,
  user_id: 1

)
component_item35.save!

component_item35 = ComponentItem.new(
  title: "National Roman Museum",
  image_url: "CmRaAAAAUKxEQbDJfMpxLN4urkCTiPzZdwzc7WzYiX-drSzGQMEbcWoevt163-kd5JuFq35spmm2E1PpMjN17ts5dX4yK_uxs30madD8JCKtBKYBnBZyUX2nFZ7w-UIpTrk67KYIEhClQrLmWfU2XUdyQcNOEg46GhT3jE3iLysNsqayRFp3SQ3IomS_9A",
  address: "Viale Enrico de Nicola, 78, 00185 Roma RM, Italy",
  component_id: 10,
  user_id: 1

)
component_item35.save!


component_item36 = ComponentItem.new(
  title: "National Gallery of Modern and Contemporary Art",
  image_url: "CmRaAAAAsaoo-yCIbTKY8K5wKxQveBF5Kov3hHSkBWej4W3zGb3fEm_7YjznfMcOVSdxYiJF81YX4Fupd-YCrgp12nxe4KHqsFDOpsLS2OdDUohL0uOtyyALlYOfq0xgZSH3IlcYEhAy1s--7lQFiH8PJniV14vzGhSBS0drDrRbHf_NOnbNDHWt5KzG2g",
  description: "I've heard great things about this museum! Something different.",
  component_id: 10,
  user_id: 1

)
component_item36.save!

component_item37 = ComponentItem.new(
  title: "Cantina e Cucina",
  image_url: "CmRaAAAAFaVJNLcKYPrfZvYVKKkGM1Day1Rkd8ejuRil9gKNk52LR4kowLUF2fcVXb6w5DcHvNiLrp_nLkc1FoEaMrL4QevApp7zt068s3UfiFOMET7J9JUOAE6qopsPleIGynfKEhCwRjexoDz2NAto2EHS1I3bGhSFIu5BaI-u1cUoXZNrVVE4PrcUHg",
  description: "Carbonara on my mind.",
  address: "Via del Governo Vecchio, 87, 00186 Roma RM, Italy",
  component_id: 11,
  user_id: 2

)
component_item37.save!

component_item38 = ComponentItem.new(
  title: "La Tavernaccia",
  image_url: "CmRaAAAAFB_1INy_JbP-k6XN_xti3-5K5mlCXlNBslQviEnUtEtJKbKk-m6HSOCSsbbTt292nC3ogrtU8N0Jp-zjf9Xz8q_80olaFSDnQeidlIHR7E0MUAVMNIGy2bY1mBoexu2-EhA7d14_xAF1dB-krmu1iHptGhRVceqpI6UtuicnZscUwV_BZqmoKQ",
  description: "Black truffle sauce? Yes.",
  address: "Via Giovanni da Castel Bolognese, 63, 00153 Roma RM, Italy",
  component_id: 11,
  user_id: 2

)
component_item38.save!


component_item40 = ComponentItem.new(
  title: "Roscioli Salumeria con Cucina",
  image_url: "CmRaAAAA0mFiDz1RBxK4cKWxVQbfqfAGYVjj3C_KB3YTmzHIeuOtYucKl0mnDg95gHXrzHrjR1B0s8ASWbhuACq0-0qBz4pUvS1QiVtgScG83vot5rRrbDtPf4BSjc6M7SeAAe-XEhCVeMQEEQbp_svLx_zEAvJYGhRR4a3-lER3HZ45g0RAsB3YUgxcYg",
  description: "There is nothing wrong with eating pasta every day in Italy!",
  address: "Piazzale Aurelio, 7, 00152 Roma RM, Italy",
  component_id: 11,
  user_id: 2

)
component_item40.save!

#paris

component_item41 = ComponentItem.new(
  title: "Le Syndicat",
  image_url: "CmRaAAAACIO024PXSXy1N-LTAc73QyhHEtbwc3oMf4ts10xeE_AkHYjNn_k1iF3IC32PnxqmdaPOUSaVJuxUCUA_ik7BKH678IBb9xf6wo1aKB_UEvjKNry_fnyaFfcGmYduRYMwEhDKiCX5LgBdm8tz8wymp1O5GhREdFVfe2TaFd6p3oGx55df9hoQAA",
  description: "Mixology spot.",
  address: "51 Rue du Faubourg Saint-Denis, 75010 Paris, France",
  component_id: 2,
  user_id: 1

)
component_item41.save!

component_item42 = ComponentItem.new(
  title: "Billili",
  image_url: "CmRaAAAAQYMOJ8KaA_EI82xJu5nrsXLtizEwgSGCeP9yzDd0wrV5YwEIRTuYt-EhMKaRJiMfpbaktsP4V1z99hjDynQO1gCws7PkIkXZRkNN7sJIma3UGhaKAPC0yQMzaupU8W1lEhAzcGkPf6mrFrfCoGNg0A3LGhQraQ9gsuwb0UDvSpKWyLt4tU2Lpg",
  description: "Wine bar.",
  address: "136 Rue du Faubourg Poissonnière, 75010 Paris, France",
  component_id: 2,
  user_id: 3

)
component_item42.save!

component_item43 = ComponentItem.new(
  title: "Combat",
  image_url: "CmRaAAAA_QrUvmNYmFpHRFXOysOxdOIfnUQ2c6zDwJJHeNWi6E7f8QXVXmw-LCwA0zNm-ZCw3Xi8FzPIOTl9OFURyAiHmPSJlsc-UPwPz4AtiGSJhHpKRmu3YRd4qbtPfSOG7aPUEhAvXjorQm3Dc3cQzxwIROW_GhToBTadE56Fu57WeplNOTH4cZ73zw" ,
  description: "Great view.",
  address: "63 Rue de Belleville, 75019 Paris, France",
  component_id: 2,
  user_id: 3

)
component_item43.save!

component_item44 = ComponentItem.new(
  title: "Lulu White",
  image_url: "CmRaAAAAW4konMvSYBlF4vAgs4kapRva08N4pu-Jk3xda6N5GKnv7p3epPWBkPN0erpVoa4z3RcHB_w2dvHQ0kW7Mt8UGAOnrEXUpWdV3l7skmxCzSQacpQ9EydfMk3y2snj93VoEhC9Z9kPHpU5neEJxoO6ca96GhTU4OgXpQ6FSFp3KUVQnPiJP1q4Bg",
  description: "Absinthe laced cocktail? Yes please.",
  address: "12 Rue Frochot, 75009 Paris, France",
  component_id: 2,
  user_id: 3

)
component_item44.save!


component_item45 = ComponentItem.new(
  title: "Marché aux Fleurs",
  image_url: "CmRaAAAAqlazd2dv-pJ4AbVhY0zUM9OyK6blY8yMkC7HHZWKiJ9UeKP05FOL3KWZ_nFShP9EbGE3z5MqBuzl1HfZboFFyox8t_wMb9SGzlFxHQG2jIE2Fc0E7wcxzFcC-vBUyfx4EhDBJfErNvTEGRaWPBLqje4zGhT7R6AuKj1Q0vQVPABo6U-Jvhsxyw",
  description: "Circa 1808 flower market.",
  address: "37 Place Louis Lépine, 75004 Paris, France",
  component_id: 5,
  user_id: 3

)
component_item45.save!

component_item46 = ComponentItem.new(
  title: "Les Puces de Saint-Ouen",
  image_url: "CmRaAAAAqlazd2dv-pJ4AbVhY0zUM9OyK6blY8yMkC7HHZWKiJ9UeKP05FOL3KWZ_nFShP9EbGE3z5MqBuzl1HfZboFFyox8t_wMb9SGzlFxHQG2jIE2Fc0E7wcxzFcC-vBUyfx4EhDBJfErNvTEGRaWPBLqje4zGhT7R6AuKj1Q0vQVPABo6U-Jvhsxyw",
  description: "One of the oldest flea markets.",
  address: "142 Rue des Rosiers, 93400 Saint-Ouen, France",
  component_id: 5,
  user_id: 1

)
component_item46.save!

component_item47 = ComponentItem.new(
  title: "Le Marché du Livre",
  image_url: "CmRaAAAAqs-V5GJp5e1jpu0AAXsyfMpNs57WJ0lxumaBtxcWgnP0GNzlz1PQIKwmkJfLnQ3gj3MnSl7KE1b5oNKYrltQ-AHT1vUCZs882PZpbQEUayjKaU1ED1ZHw-elu4pSSbLREhBuj0Tjmz08NyieR8Ij5duaGhQhxVyZnCYMRDaWjAUcZ6ZK7voN_Q",
  description: "Weekly book market, tres cute.",
  address: "104 Rue Brancion, 75015 Paris, France",
  component_id: 5,
  user_id: 1

)
component_item47.save!

component_item48 = ComponentItem.new(
  title: "Le Marché Bastille",
  image_url: "CmRaAAAADZYx3TP8E776q9prRcbBCQnqyuf9aScHFfVvOiAU3qPMAlQpb5maJxI3-iMadKdTFw256TKYQ3fWtDBDGNeWT9-KnrNxerGynEDGzuXm8C5IkrGh8KdEOwk4OX7RfufDEhBT4GT92rZId3H0zm_iRKpiGhRnghE7iqlmitXRTMpQw7EcfyT0lA",
  description: "If there's only time for one this is it.",
  address: "Place de la Bastille, 75011 Paris, France",
  component_id: 5,
  user_id: 2

)
component_item48.save!


component_item49 = ComponentItem.new(
  title: "Louvre",
  image_url: "CmRaAAAAUd_5dMOQS51-XM7ilAQtAG3l21yJRgi-iemZWnca1Mgj4RMVrrj9pF51s2UeSWyo6-uMXBRVisrqN-wfdrO7ykU3ySQBFQOv_VyD9fwx__-pxH9nlOB0Ybasu52xEh0MEhD3BMNOjkB80q2TJ_zPjFTxGhSugPd0Xlbok1YyF3jU6IICLcZLTw",
  description: "What's behind Mona Lisa's smile?",
  address: "Rue de Rivoli, 75001 Paris, France",
  component_id: 4,
  user_id: 2

)
component_item49.save!

component_item50 = ComponentItem.new(
  title: "Musée d'Orsay",
  image_url:"CmRaAAAAdVpY6VTrDhW-38CPipU56XoOWLaYjTFR_QAyfwWR2pYTFFjON74zQJaw8XN9jhhL21oPlQIIJpgd57GlQcIA61PXpRAFcHhE5v3_ZqtWVXKg6u9fXDUnSZ9eVb5npKK7EhAdLIKVs0eEQw8e6CXQ2KpuGhQ0UdWb7KOu36pgoJbbeu4fnSii0w",
  description: "Beaux-Arts railway station built between 1898 and 1900 turned art gallery",
  address: "1 Rue de la Légion d'Honneur, 75007 Paris, France",
  component_id: 4,
  user_id: 3

)
component_item50.save!

component_item51 = ComponentItem.new(
  title: "Palais de Tokyo",
  image_url:"CmRaAAAAxNXP3ezxkUG8KKMTFTR2zBTuqYntOqKs0Fr-gPgV7NRNHThkKph1cE6kL8bsZRfVLOAA5EPbYxUZbSiZhlGLs__YekbSvyXoDruVXPiQrdJ-iag4ql1upPY9WeLehlrgEhAdjnuACpmBOYusz06IRjFcGhTeQvTf4fXPaagJF3y3O9ChcltOkw",
  description: "Modern and contemporary art",
  address: "13 Avenue du Président Wilson, 75116 Paris, France ",
  component_id: 4,
  user_id: 3
)
component_item51.save!
