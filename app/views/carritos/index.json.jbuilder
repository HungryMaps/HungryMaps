json.array!(@carritos) do |carrito|
  json.extract! carrito, :id, :producto, :cantidad
  json.url carrito_url(carrito, format: :json)
end
