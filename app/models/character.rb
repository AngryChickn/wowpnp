class Character < ApplicationRecord
  belongs_to :race
  belongs_to :klass
	validates :name, presence: true,
		length: { minimum: 2 }
  validates :level, :strength, :agility, :intellect, :cunning, :willpower, :presence,
            :hitpoints, :stamina, :mana, :armor, :resistence, presence: true

  def initMods
    klass_mod = getInitKlassMod
    race_mod = getInitRaceMod
    self.hitpoints = 10 + (klass_mod[:hitpoints] || 0) + (race_mod[:hitpoints] || 0)
    self.stamina = 10 + (klass_mod[:stamina] || 0) + (race_mod[:hitpoints] || 0)
    self.mana = 0 + (klass_mod[:mana] || 0) + (race_mod[:hitpoints] || 0)
    self.armor = 0
    self.resistence = 0 + (klass_mod[:resistence] || 0) + (race_mod[:resistence] || 0)

    self.strength = 1 + (klass_mod[:strength] || 0) + (race_mod[:hitpoints] || 0)
    self.agility = 1 + (klass_mod[:agility] || 0) + (race_mod[:hitpoints] || 0)
    self.intellect = 1 + (klass_mod[:intellect] || 0) + (race_mod[:hitpoints] || 0)
    self.cunning = 1 + (klass_mod[:cunning] || 0) + (race_mod[:hitpoints] || 0)
    self.willpower = 1 + (klass_mod[:willpower] || 0) + (race_mod[:hitpoints] || 0)
    self.presence = 1 + (klass_mod[:presence] || 0) + (race_mod[:hitpoints] || 0)
  end

  # returns a hash of modifiers for an attribute
  # should return also Skills later
  # TODO: Documentate balancing for this mod
  # Mana classes get 10 Mana for free
  # 10 points total
  def getInitKlassMod
    # TODO: Refactor
    case klass.name
    when 'Krieger'
      return { hitpoints: 5, stamina: 3, strengh: 1, agility: 1 }
    when 'Paladin'
      return { hitpoints: 3, stamina: 3, mana: 12, strength: 1, presence: 1 }
    when 'Jäger'
      return { hitpoints: 2, stamina: 4, mana: 12, agility: 1, intellect: 1 }
    when 'Schamane'
      return { hitpoints: 2, stamina: 3, mana: 13, agility: 1, intellect: 1 }
    when 'Druide'
      return { hitpoints: 3, stamina: 2, mana: 12, willpower: 1, presence: 1, resistence: 1 }
    when 'Schurke'
      return { hitpoints: 2, stamina: 6, agility: 1, cunning: 1 }
    when 'Hexenmeister'
      return { hitpoints: 1, mana: 16, intellect: 1, cunning: 1, resistence: 1 }
    when 'Magier'
      return { hitpoints: 0, mana: 17, intellect: 1, willpower: 1, resistence: 1 }
    when 'Priester'
      return { hitpoints: 0, mana: 17, willpower: 1, presence: 1, resistence: 1 }
    end
  end

  # returns a hash of modifiers for an attribute
  # should return also Skills later
  # TODO: Documentate balancing for this mod
  # 8 points total
  def getInitRaceMod
    # TODO: Refactor
    case race.name
    when 'Mensch'
      return { hitpoints: 3, stamina: 4, willpower: 1 }
    when 'Zwerg'
      return { hitpoints: 4, stamina: 3, strength: 1 }
    when 'Nachtelf'
      return { hitpoints: 3, stamina: 4, presence: 1 }
    when 'Gnom'
      return { hitpoints: 3, stamina: 4, intellect: 1 }
    when 'Ork'
      return { hitpoints: 4, stamina: 3, strength: 1 }
    when 'Troll'
      return { hitpoints: 3, stamina: 4, willpower: 1 }
    when 'Taure'
      return { hitpoints: 5, stamina: 3 }
    when 'Untoter'
      return { hitpoints: 3, stamina: 4, cunning: 1 }
    end 
  end
end
