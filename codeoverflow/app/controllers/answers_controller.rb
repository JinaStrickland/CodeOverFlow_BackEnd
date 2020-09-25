class AnswersController < ApplicationController

    before_action :update, :destroy

    def index 
        @answers = Answer.all 
        render json: @answers
    end

    def create 
        @answer = Answer.create(answer_params)
        render json: @answer 
    end

    def update 
        @answer = Answer.update(answer_params)
        render json: @answer 
    end

    def destroy 
        @answer.destory 
            render json: "Answer has been deleted"
    end

    private 

    def find_answer 
        @answer = Answer.find_by(params[:id])
    end

    def anwser_params
        params.require(:answer).permit(:body, :tag)
    end

end
