class CreatePersonagems < ActiveRecord::Migration[6.1]
  def change
    create_table :personagems do |t|
      t.string :nome
      t.string :descricao
      t.string :imagem

      t.timestamps
    end
  end
end
