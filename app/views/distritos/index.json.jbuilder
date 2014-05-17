json.array!(@distritos) do |distrito|
  json.extract! distrito, :id, :nombre_distrito, :canton_id
  json.url distrito_url(distrito, format: :json)
end
