class CreateUsuarioProjetos < ActiveRecord::Migration
  def change
    create_table :usuario_projetos do |t|
      t.boolean :status, null: false
      t.belongs_to :usuario, index: true, foreign_key: true, null: false
      t.belongs_to :projeto, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
