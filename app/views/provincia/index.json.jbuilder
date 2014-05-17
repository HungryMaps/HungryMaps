json.array!(@provincia) do |provincium|
  json.extract! provincium, :id, :nombre_provincia
  json.url provincium_url(provincium, format: :json)
end
