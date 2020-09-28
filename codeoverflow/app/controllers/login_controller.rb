class LoginController < ApplicationController

    skip_before_action :logged_in?, only: [:create]


    def create
        # byebug
        user = User.find_by(username: params[:user][:username]) 
        # get the user by username
        
        # user.authenticate(params[:user][:password])       // check if password is matching 
        if user && user.authenticate(params[:user][:password])
        # byebug

            render json: {username: user.username, token: encode_token({user_id: user.id})}, status: 200
        else
            render json: {error: "Invalid username or password"}
        end
    end
end
