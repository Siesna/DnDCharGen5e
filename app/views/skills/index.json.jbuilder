json.array!(@skills) do |skill|
  json.extract! skill, :id, :acrobatics, :animal_handling, :arcana, :athletics, :deception, :history, :insight, :intimidation, :investigation, :medicine, :nature, :perception, :perception, :performance, :persuasion, :religion, :sleight_of_hand, :stealth, :survival, :ability_id
  json.url skill_url(skill, format: :json)
end
