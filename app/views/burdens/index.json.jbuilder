json.array!(@burdens) do |burden|
  json.extract! burden, :id, :material_id, :dish_id, :quantity
  json.url burden_url(burden, format: :json)
end
