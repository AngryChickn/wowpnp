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

###
# skill_list:
#
# name | description | bound_attribute | skill_type
#
#
# enum bound_attribute: 
#
# strength | agility | intellect | cunning | willpower | presence
#
#
# enum skill_type
#
# common | weapon | spell | ultimate | profession
#
###

skill_list = [
  ['Athletik', 'Description', 0, 0],
  ['Sternenkunde', 'Description', 2, 0],
  ['Charme', 'Description', 5, 0],
  ['Mechanik', 'Description', 2, 0],
  ['Disziplin', 'Description', 4, 0],
  ['Einschüchterung', 'Description', 4, 0],
  ['Führungsqualität', 'Description', 5, 0],
  ['Heimlichkeit', 'Description', 3, 0],
  ['Körperbeherrschung', 'Description', 1, 0],
  ['Medizin', 'Description', 2, 0],
  ['Pilot', 'Description', 1, 0],
  ['Straßenwissen', 'Description', 3, 0],
  ['Täuschung', 'Description', 3, 0],
  ['Überleben', 'Description', 3, 0],
  ['Verhandeln', 'Description', 5, 0],
  ['Wachsamkeit', 'Description', 4, 0],
  ['Wahrnehmung', 'Description', 3, 0],
  ['Widerstandskraft', 'Description', 0, 0],
  ['Wissen', 'Description', 2, 0],
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

Skill.all.each do |skill|
  skill.destroy!
end

skill_list.each do |skill|
  Skill.create name: skill[0], description: skill[1], bound_attribute: skill[2], skill_type: skill[3]
end
