class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question_id = @question.id
    @answer.save
  end

  def show
  end

  private

    def answer_params
    params.require(:answer).permit(:id, :content, :votes, :correctness, :question_id, :attempt_id)
  end

end
