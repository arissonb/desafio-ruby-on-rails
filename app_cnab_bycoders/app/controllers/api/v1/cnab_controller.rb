module Api
  module V1
    class CnabController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        cnabs = Cnab.order(dono_loja: :asc)
        render json: cnabs
      end

      def create
        cnab = Cnab.new(cnab_params)
        if cnab.save
          render json: cnab
        else
          render json: { error: cnab.errors.messages }, status: 422
        end
      end

      def update
        cnab = Cnab.find(params[:id])
        if cnab.update(cnab_params)
          render json: cnab
        else
          render json: { error: cnab.errors.messages }, status: 422
        end
      end

      def show
        cnab = Cnab.find(params[:id])
        render json: cnab
      end

      def destroy
        cnab = Cnab.find(params[:id])
        if cnab.destroy
          head :no_content
        else
          render json: { error: cnab.errors.messages }, status: 422
        end
      end

      private

      def cnab_params
        params.require(:cnab).permit(:data, :valor, :cpf, :cartao, :hora, :dono_loja, :nome_loja, :transacao_id)
      end
    end
  end
end
