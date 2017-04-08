class AppointmentsController < ApplicationController
    def index
        @appointment = Appointment.all
    end
end