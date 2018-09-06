class ChangeCharactersSkillsLevelDefaultTo0 < ActiveRecord::Migration[5.1]
  def change
    add_column :characters_skills, :id, :primary_key
    change_column :characters_skills, :level, :integer, :default => 0
  end
end
