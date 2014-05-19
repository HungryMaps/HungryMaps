json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :username, :email, :crypted_password, :salt
  json.url usuario_url(usuario, format: :json)
end
