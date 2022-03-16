json.extract! personagem, :id, :nome, :descricao, :imagem, :created_at, :updated_at
json.url personagem_url(personagem, format: :json)
