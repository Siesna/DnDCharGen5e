class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :acrobatics
      t.integer :animal_handling
      t.integer :arcana
      t.integer :athletics
      t.integer :deception
      t.integer :history
      t.integer :insight
      t.integer :integerimidation
      t.integer :investigation
      t.integer :medicine
      t.integer :nature
      t.integer :perception
      t.integer :performance
      t.integer :persuasion
      t.integer :religion
      t.integer :sleight_of_hand
      t.integer :stealth
      t.integer :survival
      t.references :character, index: true

      t.timestamps
    end
  end
end
