json.array!(@usuario_projetos) do |usuario_projeto|
  json.extract! usuario_projeto, :id, :status, :usuario_id, :projeto_id
  json.url usuario_projeto_url(usuario_projeto, format: :json)
end
