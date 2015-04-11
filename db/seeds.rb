# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

data = %w{cat chicken dog goat pig}
data.each do |item|
  animal = Animal.new
  animal.species = item
  animal.save
  puts animal.species
end