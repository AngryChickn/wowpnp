class Skill < ApplicationRecord
  has_and_belongs_to_many :characters

  enum bound_attribute: [:strength, :agility, :intellect, :cunning, :willpower, :presence]
  enum skill_type: [:common, :weapon, :spell, :ultimate, :profession]

  validates :name, :description, :bound_attribute, :skill_type, presence: true
end
