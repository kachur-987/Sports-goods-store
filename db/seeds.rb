# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Country.create!(title: 'Russia')
Country.create!(title: 'China')
Country.create!(title: 'Germany')
Country.create!(title: 'USA')
Country.create!(title: 'Japan')

Category.create!(title: 'Simulators and sports equipment')
Category.create!(title: 'Fitness and aerobics')
Category.create!(title: 'Sports nutrition')
Category.create!(title: 'Bicycles, electric bikes and accessories')
Category.create!(title: 'Diving')
Category.create!(title: 'Clothing and footwear for sports')
Category.create!(title: 'Sports accessories')
