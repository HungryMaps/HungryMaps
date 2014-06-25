json.array!(@opinions) do |opinion|
  json.extract! opinion, :id, :restaurante_id, :comentario, :user_id
  json.url opinion_url(opinion, format: :json)
end
