class SessionsController < ApplicationController
    def create
        session = Session.create!(sessions_params)
        redirect_to session.ticket, notice: 'Sessão adicionada'
    end

    private 

    def sessions_params
        params.require(:session).permit(:day, :ticket_id)
    end 

end