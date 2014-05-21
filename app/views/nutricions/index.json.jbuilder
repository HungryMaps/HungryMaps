json.array!(@nutricions) do |nutricion|
  json.extract! nutricion, :id, :menu_id, :energia, :grasas, :hidratos, :proteinas, :sal
  json.url nutricion_url(nutricion, format: :json)
end
