class CoachesController < ApplicationController
    def index 
        coaches = Coach.all
        render json: coaches.as_json(except: [:created_at, :updated_at])
    end

    def show
        coach = Coach.find(params[:id])
        render :json => coach.as_json(include: :reviews)
        # render json: coach
    end

    def create 
        coach = Coach.create(name: params[:name], specialty: params[:specialty], img: params[:img], bio: params[:bio])
        render json: coach
    end
    
    
#  private
#       def coach_params
#         params.require(:player).permit(:name, :jersey_num, :age, :img, :position, :team_id)
#       end

end

