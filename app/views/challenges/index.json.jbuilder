json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :champion_id, :invite_key, :score
  json.url challenge_url(challenge, format: :json)
end
