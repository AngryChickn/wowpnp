class Skill < ApplicationRecord
  has_and_belongs_to_many :characters
  validates :name, :description, presence: true
end
