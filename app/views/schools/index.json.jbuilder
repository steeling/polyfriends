json.array!(@schools) do |school|
  json.extract! school, :id, :city, :state, :name, :zip
  json.url school_url(school, format: :json)
end
