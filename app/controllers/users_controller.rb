class UsersController < ApplicationController


    def create
        
        user = User.find_by(user_name: params[:username])
        if user && user.email == params[:email]
            render json: user
            
        elsif user && user.email != params[:email]
            render json: {error: "Email doesn't match User"}

        elsif !user
            user = User.create(user_name: params[:username], email: params[:email])
            render json: user
        end
    end


end