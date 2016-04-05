p1 = Project.create(title: "Urlaubsziel auswählen", description:"bl ja bla Reisebüro", start_date:"2016-05-05")
Project.create(title: "Scheidung einreichen", description:"Endlich Single", start_date:"2016-06-06")
Project.create(title: "Neuen Hund kaufen", description:"Einen bissigen", start_date:"2016-07-07")

p1.validations.create(comment:"Neidisch", ranking: 5, username: "Theo")
p1.validations.create(comment:"Blöder Hammel", ranking:2 , username: "August")
p1.validations.create(comment:"Dumm", ranking:3 , username: "Mark")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
