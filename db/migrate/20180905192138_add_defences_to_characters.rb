class AddDefencesToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :hitpoints, :integer
    add_column :characters, :stamina, :integer
    add_column :characters, :mana, :integer
    add_column :characters, :armor, :integer
    add_column :characters, :resistence, :integer

    Character.all.each do |char|
      char.hitpoints = 10
      char.stamina = 10
      char.mana = 10
      char.armor = 0
      char.resistence = 0
      char.save
    end
  end
end
