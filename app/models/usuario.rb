class Usuario < ActiveRecord::Base
  has_many :usuario_projetos
  has_many :projetos, :through => :usuario_projetos

  validates_presence_of :nome, :email, :senha
  validates_format_of :email, :with => /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates_uniqueness_of :email
end
