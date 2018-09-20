class Npc < ApplicationRecord
  belongs_to :race, optional: true
  belongs_to :klass, optional: true # TODO: Refactor to enum
  has_and_belongs_to_many :skills
  validates :name, presence: true,
    length: { minimum: 2 }
  validates :level, :strength, :agility, :intellect, :cunning, :willpower, :presence,
            :hitpoints, :stamina, :mana, :armor, :resistence, presence: true
end
