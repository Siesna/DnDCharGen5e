class CreateSavingThrows < ActiveRecord::Migration
  def change
    create_table :saving_throws do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.references :ability, index: true

      t.timestamps
    end
  end
end
