class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :character_class
      t.string :background
      t.string :alignment
      t.integer :experience
      t.integer :level
      t.integer :speed
      t.integer :proficiency_bonus
      t.integer :max_hp
      t.integer :armor_class
      t.string :hit_die
      t.integer :total_hit_die
      t.string :languages

      t.timestamps
    end
  end
end
