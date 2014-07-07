json.array!(@materials) do |material|
  json.extract! material, :id, :name, :balance
  json.url material_url(material, format: :json)
end
