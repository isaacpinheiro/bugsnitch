class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.text :descricao, null: false
      t.string :area, null: false
      t.string :status, null: false
      t.timestamp :data_inicio, null: false
      t.timestamp :data_fim

      t.timestamps null: false
    end
  end
end
