class CharactersSkills < ApplicationRecord
  belongs_to :skill
  belongs_to :character
end