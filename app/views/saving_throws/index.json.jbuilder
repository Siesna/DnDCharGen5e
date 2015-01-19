json.array!(@saving_throws) do |saving_throw|
  json.extract! saving_throw, :id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :ability_id
  json.url saving_throw_url(saving_throw, format: :json)
end
