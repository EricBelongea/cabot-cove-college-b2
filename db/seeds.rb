# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resident1 = Resident.create(name: "Jessica Fletcher", age: 65, occupation: "Mystery writer")
resident2 = Resident.create(name: "Dr. Seth Hazlitt", age: 70, occupation: "Town Doctor")

course1 = resident1.courses.create(name: "Finger Printing")
course2 = resident1.courses.create(name: "Crime scene science")
course3 = resident2.courses.create(name: "Frankenstein")

course4 = Course.create(name: "Ruby")

resident1.courses << course4
resident2.courses << course4