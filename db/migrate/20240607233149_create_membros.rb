class CreateMembros < ActiveRecord::Migration[6.1]
  def change
    create_table :membros do |t|
      t.string :email
      t.string :nome

      t.timestamps
    end
  end
end
