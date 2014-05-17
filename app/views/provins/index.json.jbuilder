json.array!(@provins) do |provin|
  json.extract! provin, :id, :nombre_provincia, :direccion_id
  json.url provin_url(provin, format: :json)
end
