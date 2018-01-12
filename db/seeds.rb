# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
baby = Dino.create!(name: 'Baby', color: 'Pink', breed: 'Triceratops')
scary = Dino.create!(name: 'Scary', color: 'Gold', breed: 'T-Rex')
ginger = Dino.create!(name: 'Ginger', color: 'Red', breed: 'Brontosaurus')
sporty = Dino.create!(name: 'Sporty', color: 'Green', breed: 'Raptor')
posh = Dino.create!(name: 'Posh', color: 'Black', breed: 'Dilophosaurus')

puts "#{Dino.count} Spice Girls dinos created!"
