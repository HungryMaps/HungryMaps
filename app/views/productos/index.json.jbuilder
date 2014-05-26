json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre_producto, :precio, :descripcion, :tipo_producto_id, :restaurante_id
  json.url producto_url(producto, format: :json)
end
