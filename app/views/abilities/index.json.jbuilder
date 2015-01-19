json.array!(@abilities) do |ability|
  json.extract! ability, :id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :character_id
  json.url ability_url(ability, format: :json)
end
