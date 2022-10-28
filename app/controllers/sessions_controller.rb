class SessionsController < ApplicationController
    before_action :set_sessions, only: %i[ show edit update destroy ]

    def create
        session = Session.create!(sessions_params)
        redirect_to session.ticket, notice: 'Sessão adicionada'
    end

    def destroy
        @sessions.destroy
    
        respond_to do |format|
          format.html { redirect_to tickets_url, notice: "Ticket was successfully destroyed." }
          format.json { head :no_content }
        end
      end

    private 

    def sessions_params
        params.require(:session).permit(:day, :ticket_id)
    end 

end