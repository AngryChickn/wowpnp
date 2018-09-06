class AddAttributeToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :bound_attribute, :integer
    add_column :skills, :skill_type, :integer
  end
end
