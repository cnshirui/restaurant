json.array!(@meals) do |meal|
  json.extract! meal, :id, :date, :meal_type
  json.url meal_url(meal, format: :json)
end
