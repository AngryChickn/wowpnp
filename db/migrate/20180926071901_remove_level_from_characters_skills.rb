class RemoveLevelFromCharactersSkills < ActiveRecord::Migration[5.1]
  def change
    remove_column :characters_skills, :level
  end
end
