json.array!(@menus) do |menu|
  json.extract! menu, :id, :restaurante_id, :nombre_platillo, :precio, :categoria_id
  json.url menu_url(menu, format: :json)
end
