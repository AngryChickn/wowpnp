class Character < ApplicationRecord
	belongs_to :race
	has_many :skills
	validates :name, presence: true,
		length: { minimum: 2 }
  validates :level, presence: true
end
