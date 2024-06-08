class AddMembroToTarefas < ActiveRecord::Migration[6.1]
  def change
    add_reference :tarefas, :membro, null: false, foreign_key: true
  end
end
