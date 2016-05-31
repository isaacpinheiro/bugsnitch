class Anexo < ActiveRecord::Base
  belongs_to :registro
  belongs_to :comentario

  validates_presence_of :arquivo, :data_hora, :registro
end
