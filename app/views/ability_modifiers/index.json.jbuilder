json.array!(@ability_modifiers) do |ability_modifier|
  json.extract! ability_modifier, :id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :ability_id
  json.url ability_modifier_url(ability_modifier, format: :json)
end
