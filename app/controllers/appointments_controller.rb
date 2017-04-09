class AppointmentsController < ApplicationController
    
    def index
        @appointment = Appointment.all
        @new_appointment = Appointment.new
        @new_appointment.user_id = current_user.id if current_user
        if @new_appointment.save
            redirect_to appointments_show(@appointment)
        else
            render'index'
        end
    end
    
    def destroy 
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        
        redirect_to appointments_path
    end
    
    def create
        @appointment = Appointment.new
        render plain: params[:appointment].inspect
        @appointment.save
    end
    
    def new
        @appointment = Appointment.new
    end
    
end