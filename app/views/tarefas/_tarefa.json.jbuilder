json.extract! tarefa, :id, :nome, :descricao, :finalizada, :data_de_termino, :prioridade, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
