class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :texto_comentario, null: false
      t.timestamp :data_hora, null: false
      t.belongs_to :registro, index: true, foreign_key: true, null: false
      t.belongs_to :usuario_projeto, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
