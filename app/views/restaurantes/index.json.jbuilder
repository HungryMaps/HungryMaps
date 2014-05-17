json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :nombre_restaurante, :tipo_comida_id, :direccion_id
  json.url restaurante_url(restaurante, format: :json)
end
