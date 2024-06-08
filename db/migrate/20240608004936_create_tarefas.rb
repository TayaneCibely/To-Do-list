class CreateTarefas < ActiveRecord::Migration[6.1]
  def change
    create_table :tarefas do |t|
      t.string :nome
      t.string :descricao
      t.boolean :finalizada, default: false, null: false
      t.datetime :data_de_termino
      t.string :prioridade

      t.timestamps
    end
  end
end
