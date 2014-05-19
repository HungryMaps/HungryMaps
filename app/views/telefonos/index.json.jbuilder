json.array!(@telefonos) do |telefono|
  json.extract! telefono, :id, :restaurante_id, :telefono
  json.url telefono_url(telefono, format: :json)
end
