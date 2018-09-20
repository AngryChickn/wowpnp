class CreateNpcs < ActiveRecord::Migration[5.1]
  def change
    create_table :npcs do |t|
      t.string :name
      t.integer :level, :default => 0
      t.integer :hitpoints, :default => 10
      t.integer :stamina, :default => 10
      t.integer :mana, :default => 0
      t.integer :armor, :default => 0
      t.integer :resistence, :default => 0
      t.integer :strength, :default => 1
      t.integer :agility, :default => 1
      t.integer :intellect, :default => 1
      t.integer :cunning, :default => 1
      t.integer :willpower, :default => 1
      t.integer :presence, :default => 1
      t.integer :race_id
      t.integer :klass_id
      t.text :notice

      t.timestamps
    end

    create_join_table :npcs, :skills do |t|
      t.integer :id, :primary_key
      t.index [:npc_id, :skill_id]
      t.index [:skill_id, :npc_id]
      t.integer :level, :default => 0
    end
  end
end
