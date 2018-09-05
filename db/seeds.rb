# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

race_list = [
  'Mensch',
  'Zwerg',
  'Nachtelf',
  'Gnom',
  'Ork',
  'Troll',
  'Taure',
  'Untoter',
]

klass_list = [
  'Krieger',
  'Paladin', 
  'Jäger',
  'Schamane',
  'Druide',
  'Schurke',
  'Magier',
  'Hexenmeister',
  'Priester',
]

Race.all.each do |race|
  race.destroy!
end

race_list.each do |name|
  Race.create name: name
end

Klass.all.each do |klass|
  klass.destroy!
end

klass_list.each do |name|
  Klass.create name: name
end
