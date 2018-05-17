class UtilsController < ApplicationController
    before_action :authenticate_user!

    def zip_code
        @address != ""
        begin
          @address = Correios::CEP::AddressFinder.get(params[:zip_code])
        rescue StandardError
          logger.debug 'Formato inválido de CEP'
        end
        respond_to do |format|
          format.json { render json: @address }
        end
    end
end
  