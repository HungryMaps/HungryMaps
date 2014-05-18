json.array!(@tipo_comidas) do |tipo_comida|
  json.extract! tipo_comida, :id, :tipoComida
  json.url tipo_comida_url(tipo_comida, format: :json)
end
