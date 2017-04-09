class AppointmentsController < ApplicationController
    
    def index
        @appointment = Appointment.all
        @user_id = @appointment.includes(:user_id)
    end
    
    def destroy 
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
    end
    
    def create
        @appointment = Appointment.new
    end
    
    def new
        @appointment = Appointment.new
    end
    
    
    private
    def appointment_params
    end
end