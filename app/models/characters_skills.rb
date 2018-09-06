class CharactersSkills < ApplicationRecord
  belongs_to :skill
  belongs_to :character
  validates_presence_of :level
end