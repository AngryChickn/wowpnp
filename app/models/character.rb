class Character < ApplicationRecord
	has_one :race
	has_many :skills
	validates :name, presence: true,
		length: { minimum: 2 }
end
