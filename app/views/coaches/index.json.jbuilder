json.array!(@coaches) do |coach|
  json.extract! coach, :id, :first_name, :last_name, :img_ref, :started, :gender
  json.url coach_url(coach, format: :json)
end
