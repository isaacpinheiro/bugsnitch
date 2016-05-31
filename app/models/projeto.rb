class Projeto < ActiveRecord::Base
  has_many :usuario_projetos
  has_many :usuarios, :through => :usuario_projetos

  validates_presence_of :descricao, :area, :status, :data_inicio
  validates_length_of :status, :in => 9..12
end
