class CreateJoinTableCharactersSkills < ActiveRecord::Migration[5.1]
  def change
    create_join_table :characters, :skills do |t|
      t.index [:character_id, :skill_id]
      t.index [:skill_id, :character_id]
      t.integer :level
    end
  end
end
