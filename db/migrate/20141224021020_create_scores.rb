class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :integerelligent
      t.integer :wisdom
      t.integer :charisma
      t.integer :str_mod
      t.integer :dex_mod
      t.integer :con_mod
      t.integer :integer_mod
      t.integer :wis_mod
      t.integer :cha_mod
      t.integer :str_saving_throw
      t.integer :dex_saving_throw
      t.integer :con_saving_throw
      t.integer :integer_saving_throw
      t.integer :wis_saving_throw
      t.integer :cha_saving_throw
      t.references :character, index: true

      t.timestamps
    end
  end
end
