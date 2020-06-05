class RegistrationsController < ApplicationController

    
    def index 
        registrations = Registration.all
        render json: registrations.as_json(except: [:created_at, :updated_at])
    end

    def show
        registration = Registration.find(params[:id])
        render json: registration
    end

  
end
