class Character < ApplicationRecord
  belongs_to :race
  belongs_to :klass
  has_and_belongs_to_many :skills
	validates :name, presence: true,
		length: { minimum: 2 }
  validates :level, :strength, :agility, :intellect, :cunning, :willpower, :presence,
            :hitpoints, :stamina, :mana, :armor, :resistence, presence: true

  # TODO: Refactor to constructor
  def init
    initMods
    initSkills
  end

  # returns an Array of green and yellow dice count
  def calcDices(skill)
    green_count = self[skill.bound_attribute]
    yellow_count = 0
    level = CharactersSkills.where(character_id: self.id, skill_id: skill.id).first.level
    if level > 0
      while green_count >= 0 && level > 0 do
        green_count -= 1
        level -= 1
        yellow_count += 1
      end
    end
    [green_count, yellow_count]
  end

  private

  def initMods
    klass_mod = getInitKlassMod
    race_mod = getInitRaceMod

    # Resources
    self.hitpoints = 10 + (klass_mod[:hitpoints] || 0) + (race_mod[:hitpoints] || 0)
    self.stamina = 10 + (klass_mod[:stamina] || 0) + (race_mod[:stamina] || 0)
    self.mana = 0 + (klass_mod[:mana] || 0) + (race_mod[:mana] || 0)
    
    # Defense
    self.armor = 0
    self.resistence = 0 + (klass_mod[:resistence] || 0) + (race_mod[:resistence] || 0)

    # Attributes
    self.strength = 1 + (klass_mod[:strength] || 0) + (race_mod[:strength] || 0)
    self.agility = 1 + (klass_mod[:agility] || 0) + (race_mod[:agility] || 0)
    self.intellect = 1 + (klass_mod[:intellect] || 0) + (race_mod[:intellect] || 0)
    self.cunning = 1 + (klass_mod[:cunning] || 0) + (race_mod[:cunning] || 0)
    self.willpower = 1 + (klass_mod[:willpower] || 0) + (race_mod[:willpower] || 0)
    self.presence = 1 + (klass_mod[:presence] || 0) + (race_mod[:presence] || 0)
  end

  def initSkills
    self.skills << getInitCommonSkills << getInitKlassSkills
  end

  def getInitCommonSkills
    # common = 0
    Skill.where(skill_type: 0)
  end

  def getInitKlassSkills
    # TODO: Refactor
    [] << Skill.where(klass_id: klass.id)
  end

  # returns a hash of modifiers for an attribute
  # should return also Skills later
  # TODO: Documentate balancing for this mod
  # Mana classes get 10 Mana for free (like stamina)
  # 10 points total
  def getInitKlassMod
    # TODO: Refactor
    case klass.name
    when 'Krieger'
      return { hitpoints: 5, stamina: 3, strength: 1, agility: 1 }
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
