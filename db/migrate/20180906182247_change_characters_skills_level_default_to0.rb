class ChangeCharactersSkillsLevelDefaultTo0 < ActiveRecord::Migration[5.1]
  def change
    change_column :characters_skills, :level, :integer, :default => 0
  end
end
