class QuestionsController < ApplicationController
  def index
    @cas = Case.find(params[:case_id])
    @attempt = current_user.attempts.last
    @attempt.update(completed: true)
    @questions = Question.all
    @questionstothiscase = Question.where(case_id: @cas.id)
  end

  def show
    @question = Question.find(params[:id])
    if params[:attempt] == "new"
      @attempt = Attempt.create(user_id: current_user.id, case_id: @question.case.id)
    end
    @answer = Answer.new
  end
end
