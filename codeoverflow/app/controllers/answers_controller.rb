class AnswersController < ApplicationController

    before_action :find_answer, only: [:show, :update, :destroy]

    def index 
        @answers = Answer.all 
        render json: @answers
    end

    def show
        render json: @answer
    end

    def create 
        @answer = Answer.create(answer_params)
        render json: @answer 
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
        params.require(:answer).permit(:body, :user_id, :question_id)
    end

end
