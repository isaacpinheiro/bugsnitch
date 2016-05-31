json.array!(@registros) do |registro|
  json.extract! registro, :id, :data_hora, :resumo, :prioridade, :severidade, :status, :usuario_projeto_id
  json.url registro_url(registro, format: :json)
end
