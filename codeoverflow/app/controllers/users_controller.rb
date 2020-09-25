class UsersController < ApplicationController

    before_action :show, :update, :destory

    def show 
        @user = User.find_by(params[:id])
        render json: @user
        # only: [:username, :email, :image], 
        #     include: [:questions => {include: :answers, only: [:title, :body, :tag]}]
    end

    def create
        user = User.new(user_params)

        if user.valid?
            user.save 
            render json: { user: user }, status: :created 
        else
            render json: { error: "Failed to create a user" }, status: :not-acceptable
        end
    end

    def update 
        @user = User.update(user_params)
        render json: @user 
    end

    def destory 
        @user.destory 
        render json: "Account has been deleted"
    end

    private 

    def find_user 
        @user = User.find_by(params[:id])
    end

    def user_params 
        params.permit(:username, :email, :password, :image)
    end

end
