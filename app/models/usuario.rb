class Usuario < ApplicationRecord
  paginates_per 5

  enum tipo: %i[anunciante administrador]

  has_many :demandas

  validates :nome, presence: true
  validates :tipo, inclusion: { in: Usuario.tipos.keys }

end
