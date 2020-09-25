class QuestionsController < ApplicationController

    before_action :find_question, only: [:show, :update, :destroy]

    def index 
        @questions = Question.all 
        render json: @questions, only: [:title, :body, :tag, :user_id]
    end

    def show 
        render json: @question, include: [:answers => {only: [:body, :user_id]} ]
    end
    
    def create 
        @question = Question.create(question_params)
        render json: @question 
    end

    def update 
        @question.update(question_params)
        render json: @question 
    end

    def destroy 
        @question.destroy
        render json: "Question has been deleted"
    end

    private 

    def find_question 
        @question = Question.find_by(id: params[:id])
    end

    def question_params
        params.require(:question).permit(:title, :body, :tag, :user_id)
    end
end