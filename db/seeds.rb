# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# db/seeds.rb
wall = Wall.create!({
  name: "Fiscalité",
  photo: "http://lorempixel.com/740/680/business/"
})
puts " created #{ wall.name }"
wall = Wall.create!({
  name: "Détente",
  photo: "http://lorempixel.com/740/680/nightlife/"
})
puts " created #{ wall.name }"
