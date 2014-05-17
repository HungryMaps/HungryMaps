json.array!(@cantons) do |canton|
  json.extract! canton, :id, :nombre_canton, :provincia_id
  json.url canton_url(canton, format: :json)
end
