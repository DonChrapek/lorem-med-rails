class DoctorsController < ApplicationController
    
    def show
        @doctor = Doctor.find(params[:id])
    end
    
    def index
        @doctor = Doctor.all
    end
    
    
    
    private
    def doctor_params
        params.require(:doctors).permit(:id)
    end
    
end
