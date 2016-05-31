class Registro < ActiveRecord::Base
  belongs_to :usuario_projeto
  has_many :comentarios
  has_many :anexos

  validates_presence_of :data_hora, :resumo, :prioridade, :severidade, :status, :usuario_projeto
end
