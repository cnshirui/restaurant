json.array!(@dishes) do |dish|
  json.extract! dish, :id, :name, :book_id
  json.url dish_url(dish, format: :json)
end
