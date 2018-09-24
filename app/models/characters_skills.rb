class CharactersSkills < ApplicationRecord
  belongs_to :skill
  belongs_to :character
  validates :level, numericality: {
    only_integer: true,
    less_than_or_equal_to: 5,
  }
end