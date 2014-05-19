json.array!(@tipocomidas) do |tipocomida|
  json.extract! tipocomida, :id, :restaurante_id, :tipocomida
  json.url tipocomida_url(tipocomida, format: :json)
end
