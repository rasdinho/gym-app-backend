class SessionsController < ApplicationController
    #date_time:timestamp 
    def index
        sessions = Session.all
        render json: sessions.as_json(include: [:coach], except: [:created_at, :updated_at])
    end
   
    def show
        session = Session.find(params[:id])
        render json: session
    end

    
end
