json.array!(@books) do |book|
  json.extract! book, :id, :name, :url
  json.url book_url(book, format: :json)
end
