json.array!(@ubicacions) do |ubicacion|
  json.extract! ubicacion, :id, :provincia_id, :canton_id, :distrito_id, :señas
  json.url ubicacion_url(ubicacion, format: :json)
end
