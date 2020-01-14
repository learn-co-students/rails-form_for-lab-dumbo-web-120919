# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Adam", last_name: "Sandler")
Student.create(first_name: "Chris", last_name: "Farley")
Student.create(first_name: "David", last_name: "Spade")

SchoolClass.create(title: "Chlorophyll, more like Borophyll", room_number: 14)
SchoolClass.create(title: "Spanish Armada", room_number: 64)
SchoolClass.create(title: "One Piece of Ace", room_number: 3)