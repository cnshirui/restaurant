json.array!(@shoppings) do |shopping|
  json.extract! shopping, :id
  json.url shopping_url(shopping, format: :json)
end
