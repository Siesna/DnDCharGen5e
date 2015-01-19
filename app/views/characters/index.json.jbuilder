json.array!(@characters) do |character|
  json.extract! character, :id, :name, :race, :character_class, :background, :alignment, :experience, :level, :speed, :proficiency_bonus, :max_hp, :max_hp, :armor_class, :hit_die, :total_hit_die, :languages
  json.url character_url(character, format: :json)
end
