class AddRaceToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :race_id, :integer  
  end
end
