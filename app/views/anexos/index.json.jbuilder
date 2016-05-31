json.array!(@anexos) do |anexo|
  json.extract! anexo, :id, :arquivo, :registro_id, :comentario_id
  json.url anexo_url(anexo, format: :json)
end
