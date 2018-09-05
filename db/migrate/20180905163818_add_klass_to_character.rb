class AddKlassToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :klass_id, :integer
  end
end
