class RegistrationsController < ApplicationController

    
    def index 
        registrations = Registration.all
        render json: registrations.as_json(except: [:created_at, :updated_at])
    end

    def show
        registration = Registration.find(params[:id])
        render json: registration
    end

    def create 
        registration = Registration.create(user_id: params[:user_id], session_id: params[:session_id])
            session = Session.find(params[:session_id]) # the session the user will sign up for
            render json: session
    end

    def destroy
        
    end
end
