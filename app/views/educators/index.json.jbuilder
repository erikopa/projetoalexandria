json.array!(@educators) do |educator|
  json.extract! educator, :id, :first_name, :last_name, :age
  json.url educator_url(educator, format: :json)
end
