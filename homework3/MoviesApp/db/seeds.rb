# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all

data = [{title: "Apollo 13", year: 1995}, { title: 'Star Wars', year: 1977}, { title: 'Toy Story', year: 1995 }]

data.each do |movie_info|
  m = Movie.new
  m.title = movie_info[:title]
  m.year = movie_info[:year]
  m.save
end

puts "There are now #{Movie.count} movies in the database"

Theater.destroy_all
theater_data = [{name: "Block Cinema", address: '40 Art Circle Drive, Evanston, IL'},
                { name: 'Century 12 Evanston', address: '1715 Maple Ave., Evanston, IL'}]

theater_data.each do |theater_info|
  t = Theater.new
  t.name = theater_info[:name]
  t.address = theater_info[:address]
  t.save
end
puts "There are now #{Theater.count} theaters in the database"
