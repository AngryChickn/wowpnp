class CharactersSkills < ApplicationRecord
  belongs_to :skill
  belongs_to :charcter
  validates_presence_of :level
end