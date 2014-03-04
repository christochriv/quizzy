json.array!(@questions) do |question|
  json.extract! question, :id, :query, :answer_id, :good_answer_id, :explication, :source_url, :points
  json.url question_url(question, format: :json)
end