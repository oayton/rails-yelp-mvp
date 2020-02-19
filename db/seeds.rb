# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '020 7420 9324',
    description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    category:     'belgian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '020 8969 4500',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    category:     'italian'
  },
  {
    name:         'Transformers',
    address:      'Brunswick St, Melbourne',
    phone_number: '(03) 9419 2022',
    description:  'Vegan restuarant. High-end for the type, but good date-spot.',
    category:     'french'
  },
  {
    name:         'Hunan',
    address:      'Pimlico Rd, London',
    phone_number: '020 7730 5712',
    description:  'Top-end Chinese food with set-menu. Dont miss when visiting.',
    category:     'chinese'
  },
  {
    name:         'Ichi Ni',
    address:      'St Kilda, Melbourne',
    phone_number: '(03) 9534 1212',
    description:  'Sushi spot. Funky vibes and buzzy atmosphere.',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
