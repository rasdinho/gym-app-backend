class AuthController < ApplicationController


    def create #to sign in (not for sign up (sign up will in create a user))
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode(payload)
            new_hash = {}
            new_hash["user_data"] = user # user from line 6
            new_hash["token"] = token #token from line 11
            render json: new_hash

        else
            render json: {
                error_message: "Incorrect username or password"
              }
        end
    end

end

