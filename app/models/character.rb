class Character < ApplicationRecord
	belongs_to :race
	validates :name, presence: true,
		length: { minimum: 2 }
  validates :level, presence: true

end
