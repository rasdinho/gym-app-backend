class RegistrationsController < ApplicationController

    
    def index 
        registrations = Registration.all
        render json: registrations.as_json(include: [:user, :session] , except: [:created_at, :updated_at])
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
        registration = Registration.find(params[:id])
        registration.destroy
      end

      def delete
        user = User.find(params[:user_id])
        registration = Registration.find_by(user_id: params[:user_id], session_id: params[:session_id])
        registration.destroy
        
        render json: user.to_json(include: [:sessions])
      end
end
