json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :texto_comentario, :data_hora, :registro_id, :usuario_projeto_id
  json.url comentario_url(comentario, format: :json)
end
