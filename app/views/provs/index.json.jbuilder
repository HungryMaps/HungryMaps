json.array!(@provs) do |prov|
  json.extract! prov, :id, :nombre_provincia
  json.url prov_url(prov, format: :json)
end
