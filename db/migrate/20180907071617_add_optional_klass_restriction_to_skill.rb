class AddOptionalKlassRestrictionToSkill < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :klass_id, :integer
  end
end
