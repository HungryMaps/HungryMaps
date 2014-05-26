json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :nombre_restaurante, :telefono, :correo_electronico, :fax, :tipo_comida_id, :señas
  json.url restaurante_url(restaurante, format: :json)
end
