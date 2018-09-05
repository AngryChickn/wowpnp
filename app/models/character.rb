class Character < ApplicationRecord
  belongs_to :race
  belongs_to :klass
	validates :name, presence: true,
		length: { minimum: 2 }
  validates :level, :strength, :agility, :intellect, :cunning, :willpower, :presence,
            :hitpoints, :stamina, :mana, :armor, :resistence, presence: true

  def getInitKlassMod
    # TODO: better mapping
    case klass.name
    when 'Krieger'
      return { hitpoints: 5, stamina: 3, strengh: 1 }
    when 'Paladin'
      return { hitpoints: 3, stamina: 3, mana: 3, presence: 1 }
    when 'Jäger'
      return { hitpoints: 2, stamina: 5, mana: 2, agility: 1 }
    when 'Schamane'
      return { hitpoints: 2, stamina: 3, mana: 4, intellect: 1 }
    when 'Druide'
      return { hitpoints: 3, stamina: 3, mana: 3, intellect: 1 }
    when 'Schurke'
      return { hitpoints: 2, stamina: 5, agility: 1, cunning: 1 }
    when 'Hexenmeister'
      return { hitpoints: 2, mana: 5, intellect: 1, cunning: 1 }
    when 'Magier'
      return { hitpoints: 0, mana: 7, intellect: 1, willpower: 1 }
    when 'Priester'
      return { hitpoints: 1, mana: 6, willpower: 1, presence: 1 }
    end
  end
end
