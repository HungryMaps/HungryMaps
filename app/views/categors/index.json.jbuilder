json.array!(@categors) do |categor|
  json.extract! categor, :id, :nombre_categoria
  json.url categor_url(categor, format: :json)
end
