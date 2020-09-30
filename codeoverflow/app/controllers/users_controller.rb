class UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:index, :show, :create]
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        @users = User.all
        render json: @users
    end

    def show 
        render json: @user, only: [:username, :email, :image], include: [:questions => {include: :answers, only: [:title, :body, :tag]}]
    end

    def create
        user = User.new(user_params)
        user.save 
        render json: user

        # if user.valid?
        #     render json: { user: user }, status: :created 

        # else
        #     render json: { error: "Failed to create a user" }, status: 404
        # end
    end

    def update 
        @user.update(user_params)
        render json: @user 
    end

    def destroy
        @user.destroy 
        render json: "Account has been deleted"
    end

private 
    def find_user 
        @user = User.find_by(id: params[:id])
        # byebug
    end

    def user_params 
        params.require(:user).permit(:username, :email, :password, :image, :company_id)
    end

end
