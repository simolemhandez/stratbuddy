class QuestionsController < ApplicationController
  def index
    @case = Case.find(params[:case_id])
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end
end
