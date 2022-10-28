class HourSessions_Controller < ApplicationController
    before_action :set_hourSessions, only: %i[ show edit update destroy ]

    def create
        hourSession = HourSession.create!(hourSessions_params)
        redirect_to session.ticket, notice: 'Hora adicionada'
    end

    def destroy
        @hourSession.destroy
    
        respond_to do |format|
          format.html { redirect_to tickets_url, notice: "Ticket was successfully destroyed." }
          format.json { head :no_content }
        end
      end

    private 

    def hourSessions_params
        params.require(:hourSession).permit(:hour, :session_id)
    end 

end