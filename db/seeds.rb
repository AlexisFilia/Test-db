puts "Creating some Entities"
entity1 = Entity.create!(type_of: "person")
entity2 = Entity.create!(type_of: "collection")
entity3 = Entity.create!(type_of: "movie")
entity4 = Entity.create!(type_of: "movie")
entity5 = Entity.create!(type_of: "comment")
entity6 = Entity.create!(type_of: "comment")
entity7 = Entity.create!(type_of: "comment")
entity8 = Entity.create!(type_of: "comment")
entity9 = Entity.create!(type_of: "item_list")

puts "Creating fields for Entities"
Field.create!(entity: entity1, name: 'first_name', value: 'Alexis', type_value: "String")
Field.create!(entity: entity1, name: 'last_name', value: 'Filia', type_value: "String")
Field.create!(entity: entity1, name: 'birth_date', value: '2021-06-10T16:30:14+02:00', type_value: "Date")

Field.create!(entity: entity2, name: 'name', value: 'Collection de Alexis', type_value: "String")
Field.create!(entity: entity2, name: 'description', value: 'On test description', type_value: "String")

Field.create!(entity: entity3, name: 'name', value: 'StarWars', type_value: "String")
Field.create!(entity: entity3, name: 'description', value: 'Film de mon enfance', type_value: "String")
Field.create!(entity: entity3, name: 'abstract', value: 'On test abstract', type_value: "String")
Field.create!(entity: entity3, name: 'url', value: 'www.youtube.com/starwars', type_value: "String")
Field.create!(entity: entity3, name: 'thumbnail_url', value: 'www.youtube.com/starwars/thumbnailUrl', type_value: "String")

Field.create!(entity: entity4, name: 'name', value: 'KingKong', type_value: "String")
Field.create!(entity: entity4, name: 'description', value: 'Film trop vieux', type_value: "String")
Field.create!(entity: entity4, name: 'abstract', value: 'On test abstract', type_value: "String")
Field.create!(entity: entity4, name: 'url', value: 'www.youtube.com/kingkong', type_value: "String")
Field.create!(entity: entity4, name: 'thumbnail_url', value: 'www.youtube.com/kingkong/thumbnailUrl', type_value: "String")

Field.create!(entity: entity5, name: 'name', value: 'A voir absolument', type_value: "String")
Field.create!(entity: entity5, name: 'text', value: "C'était trop bien, faut aller le voir!!!", type_value: "String")
Field.create!(entity: entity5, name: 'date_published', value: '2021-02-10T16:30:14+02:00', type_value: "Date")

Field.create!(entity: entity6, name: 'name', value: 'Nul...', type_value: "String")
Field.create!(entity: entity6, name: 'text', value: "Je vous le déconseille, je me suis endormi...", type_value: "String")
Field.create!(entity: entity5, name: 'date_published', value: '2020-06-10T16:30:14+02:00', type_value: "Date")

Field.create!(entity: entity7, name: 'name', value: 'Horrible', type_value: "String")
Field.create!(entity: entity7, name: 'text', value: "Une collection plutôt homogène...", type_value: "String")
Field.create!(entity: entity5, name: 'date_published', value: '2019-06-10T16:30:14+02:00', type_value: "Date")

Field.create!(entity: entity8, name: 'name', value: 'Pourquoi pas', type_value: "String")
Field.create!(entity: entity8, name: 'text', value: "Un film étrange", type_value: "String")
Field.create!(entity: entity5, name: 'date_published', value: '2021-06-11T16:30:14+02:00', type_value: "Date")

puts "Creating links for Entities"
Link.create!(from: entity1, to: entity2, name: "editor")
Link.create!(from: entity1, to: entity3, name: "SAW_BY")
Link.create!(from: entity1, to: entity4, name: "SAW_BY")
Link.create!(from: entity1, to: entity5, name: "author")
Link.create!(from: entity1, to: entity6, name: "author")

Link.create!(from: entity2, to: entity3, name: "creator")
Link.create!(from: entity2, to: entity3, name: "editor")
Link.create!(from: entity2, to: entity9, name: "access_mode_sufficient")

Link.create!(from: entity9, to: entity3, name: "itemListElement")
Link.create!(from: entity9, to: entity4, name: "itemListElement")

Link.create!(from: entity5, to: entity3, name: "about")
Link.create!(from: entity6, to: entity3, name: "about")
Link.create!(from: entity7, to: entity4, name: "about")
Link.create!(from: entity8, to: entity4, name: "about")

puts "Seed done"