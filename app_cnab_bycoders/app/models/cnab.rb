class Cnab < ApplicationRecord
  belongs_to :transacao
  # scope :totalizador, ->(cpf) { where(cpf: cpf) }


  def totalizador(parametro)
    
    Cnab.where(cpf: parametro ).sum(:valor  )
  end
end
