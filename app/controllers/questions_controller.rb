class QuestionsController < ApplicationController
  def index
    @case = Case.find(params[:case_id])
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    if params[:attempt] == "new"
      @attempt = Attempt.create(user_id: current_user.id, case_id: @question.case.id)
    end
  end
end
