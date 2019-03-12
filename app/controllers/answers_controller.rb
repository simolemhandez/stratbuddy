class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @attempt = Attempt.where(user_id: current_user.id, case_id: @question.case.id).last
    @answer = Answer.new(answer_params)
    @answer.question_id = @question.id
    @answer.attempt_id = @attempt.id
    if @answer.save
      redirect_to answer_path(@answer)
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
    @question = @answer.question
    correct = 0
    @question.keywords.each do |keyword|
      if @answer.content.include?(keyword)
        correct += 1
      end
    end
    @user = current_user
    @case_score = 0
    if correct == 0
      @answer.correctness = "Bad result. You should keep working on this area."
    elsif correct == @question.keywords.length
      @answer.correctness = "Perfect. You are on the way for MBB"
      @user.score += 3
      @case_score += 3
    elsif correct < @question.keywords.length.fdiv(2)
      @answer.correctness = "Not bad. You can still improve your skills"
      @user.score += 1
      @case_score += 1
    else
      @answer.correctness = "Very good. Keep up the good work!"
      @user.score += 2
      @case_score += 2
    end
    @user.save
    @next_question = Question.where(position: @question.position + 1, case_id: @question.case.id).last
  end

  private

  def answer_params
    params.require(:answer).permit(:id, :content, :votes, :correctness, :question_id, :attempt_id)
  end

end
