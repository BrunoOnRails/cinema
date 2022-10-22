class SessionsControlelr < ApplicationController
    def create
        sessions = Sessions.create!(sessions_param)
        redirect_to sessions.ticket, notice: 'Sessão adicionada'
    end

    def sessions_param
        params.require(:sessions).permit(:day, :ticket_id)
    end 

end