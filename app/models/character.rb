class Character < ApplicationRecord
  belongs_to :race
  belongs_to :klass
	validates :name, presence: true,
		length: { minimum: 2 }
  validates :level, :strength, :agility, :intellect, :cunning, :willpower, :presence,
            :hitpoints, :stamina, :mana, :armor, :resistence, presence: true

  def initMods
    klass_mod = getInitKlassMod     
    self.hitpoints = 10 + (klass_mod[:hitpoints] || 0)
    self.stamina = 10 + (klass_mod[:stamina] || 0)
    self.mana = 10 + (klass_mod[:mana] || 0)
    self.armor = 0
    self.resistence = 0

    self.strength = 1 + (klass_mod[:strength] || 0)
    self.agility = 1 + (klass_mod[:agility] || 0)
    self.intellect = 1 + (klass_mod[:intellect] || 0)
    self.cunning = 1 + (klass_mod[:cunning] || 0)
    self.willpower = 1 + (klass_mod[:willpower] || 0)
    self.presence = 1 + (klass_mod[:presence] || 0)
  end

  def getInitKlassMod
    # TODO: Refactor
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
