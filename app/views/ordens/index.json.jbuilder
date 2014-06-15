json.array!(@ordens) do |orden|
  json.extract! orden, :id, :user_id, :restaurante_id, :productos, :precio, :descripcion, :fecha
  json.url orden_url(orden, format: :json)
end
