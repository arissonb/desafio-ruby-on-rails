class CnabController < ApplicationController
  def index
    @cnabs = Cnab.order(dono_loja: :asc)
  end

  def upload_file
    UtilService.codificar(params['anexo'])
    flash.alert = 'Arquivo anexado.'
    redirect_to root_path
  end
end
