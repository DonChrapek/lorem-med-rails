class AppointmentsController < ApplicationController
    
    def index
        @appointment = Appointment.all
        @user_id = @appointment.includes(:user_id)
    end
    
    def destroy 
        @appointment = Appointment.find(params[:id])
        
    end
end