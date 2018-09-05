class Character < ApplicationRecord
  belongs_to :race
  belongs_to :klass
	validates :name, presence: true,
		length: { minimum: 2 }
  validates :level, presence: true

end
