class CreateAnexos < ActiveRecord::Migration
  def change
    create_table :anexos do |t|
      t.text :arquivo
      t.timestamp :data_hora, null: false
      t.belongs_to :registro, index: true, foreign_key: true, null: false
      t.belongs_to :comentario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
