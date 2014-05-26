json.array!(@ubicacions) do |ubicacion|
  json.extract! ubicacion, :id, :provincia, :canton, :distrito, :restaurante_id
  json.url ubicacion_url(ubicacion, format: :json)
end
