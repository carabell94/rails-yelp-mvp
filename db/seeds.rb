# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants = Restaurant.create([{ name: 'one', address: 'one', phone_number: 'one', category: 'belgian' },
                                 { name: 'two', address: 'two', phone_number: 'two', category: 'french' },
                                 { name: 'three', address: 'three', phone_number: 'three', category: 'japanese' },
                                 { name: 'four', address: 'four', phone_number: 'four', category: 'italian' },
                                 { name: 'five', address: 'five', phone_number: 'five', category: 'chinese' }])
