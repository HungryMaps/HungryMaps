json.array!(@direccions) do |direccion|
  json.extract! direccion, :id, :restaurante_id, :señas
  json.url direccion_url(direccion, format: :json)
end
