json.extract! npc, :id, :name, :level, :hitpoints, :stamina, :mana, :armor, :resistence, :strength, :agility, :intellect, :cunning, :willpower, :presence, :race_id, :klass_id, :notice, :created_at, :updated_at
json.url npc_url(npc, format: :json)
