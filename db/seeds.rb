# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Location.create(name: 'Hyderabad')
Location.create(name: 'Warangal')
Location.create(name: 'Vijayawada')

Show.create(time: '10:00AM')
Show.create(time: '2:00PM')
Show.create(time: '3:00PM')