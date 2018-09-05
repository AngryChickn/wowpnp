class AddAttributesToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :strength, :integer
    add_column :characters, :agility, :integer
    add_column :characters, :intellect, :integer
    add_column :characters, :cunning, :integer
    add_column :characters, :willpower, :integer
    add_column :characters, :presence, :integer
  end
end
