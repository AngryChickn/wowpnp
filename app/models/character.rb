class Character < ApplicationRecord
	has_many :skills
	validates :name, presence: true,
		length: { minimum: 2 }
end
