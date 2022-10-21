class SessionsControlelr < ApplicationController
    def create
        @sessions = Sessions.new(sessions_params)

        respond_to do |format|
            if @sessions.save!
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @sessions.errors, status: :unprocessable_entity 
            end
        end
    end
end