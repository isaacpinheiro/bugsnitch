class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.timestamp :data_hora, null: false
      t.text :resumo, null: false
      t.string :prioridade, null: false
      t.string :severidade, null: false
      t.boolean :status, null: false
      t.belongs_to :usuario_projeto, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
