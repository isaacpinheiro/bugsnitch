class Comentario < ActiveRecord::Base
  belongs_to :registro
  belongs_to :usuario_projeto
  has_many :anexos

  validates_presence_of :texto_comentario, :data_hora, :registro, :usuario_projeto
end
