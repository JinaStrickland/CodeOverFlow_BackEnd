class AnswersController < ApplicationController

    before_action :find_answer, only: [:show, :update, :destroy]
    skip_before_action :logged_in?, only: [:index, :show]

    def index 
        @answers = Answer.all 
        render json: @answers
    end

    def show
        render json: @answer
    end

    def create 
        # byebug
        @answer = Answer.create(body: params[:answer][:body], question_id: params[:answer][:question_id], user_id: @user.id)
        render json: @answer, include: [:user, :question]
    end

    def update 
        @answer.update(answer_params)
        render json: @answer 
    end

    def destroy 
        @answer.destroy 
            render json: "Answer has been deleted"
    end

    private 

    def find_answer 
        @answer = Answer.find_by(id: params[:id])
    end

    def answer_params
        params.require(:answer).permit(:body, :question_id)
    end

end
