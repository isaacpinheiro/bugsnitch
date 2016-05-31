class UsuarioProjeto < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :projeto
  has_many :registros
  has_many :comentarios

  validates_presence_of :status, :usuario, :projeto
end
