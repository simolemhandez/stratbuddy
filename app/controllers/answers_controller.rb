class AnswersController < ApplicationController
  def index
    @answers = policy_scope(Answer)
    @users = User.all
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    authorize @answer
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
    authorize @answer
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
    @attempt = Attempt.where(user_id: current_user.id, case_id: @question.case.id).last
    if correct == 0
      @answer.correctness = "Keep working. Practice makes perfect 🤔"
    elsif correct == @question.keywords.length
      @answer.correctness = "Perfect. You are on the way for MBB 🎉"
      @user.score += 3
      @attempt.score += 3

      if @question.skills == "Logic and rigorous thinking"
        @user.logic += 3
      elsif @question.skills == "Business sense & culture"
        @user.business_sense += 3
      elsif @question.skills == "Mathematics skills"
        @user.mathematics += 3
      end

      if @question.case.industry == "Consumer goods"
        @user.consumer_goods += 3
      elsif @question.case.industry == "Oil & gas"
        @user.oil_and_gas += 3
      elsif @question.case.industry == "Manufacturing"
        @user.manufacturing += 3
      elsif @question.case.industry == "Financial services"
        @user.financial_services += 3
      elsif @question.case.industry == "Private Equity"
        @user.private_equity += 3
      elsif @question.case.industry == "Pharmaceuticals"
        @user.pharmaceuticals += 3
      elsif @question.case.industry == "Airline"
        @user.airline += 3
      elsif @question.case.industry == "Technology, Media & Telecommunication"
        @user.tmt += 3
      elsif @question.case.industry == "Non-profit"
        @user.non_profit += 3
      elsif @question.case.industry == "Public sector"
        @user.public_sector += 3
      end

    elsif correct < @question.keywords.length.fdiv(2)
      @answer.correctness = "Not bad. You can still improve your skills 😓"
      @user.score += 1
      @attempt.score += 1

      if @question.skills == "Logic and rigorous thinking"
        @user.logic += 1
      elsif @question.skills == "Business sense & culture"
        @user.business_sense += 1
      elsif @question.skills == "Mathematics skills"
        @user.mathematics += 1
      end

      if @question.case.industry == "Consumer goods"
        @user.consumer_goods += 1
      elsif @question.case.industry == "Oil & gas"
        @user.oil_and_gas += 1
      elsif @question.case.industry == "Manufacturing"
        @user.manufacturing += 1
      elsif @question.case.industry == "Financial services"
        @user.financial_services += 1
      elsif @question.case.industry == "Private Equity"
        @user.private_equity += 1
      elsif @question.case.industry == "Pharmaceuticals"
        @user.pharmaceuticals += 1
      elsif @question.case.industry == "Airline"
        @user.airline += 1
      elsif @question.case.industry == "Technology, Media & Telecommunication"
        @user.tmt += 1
      elsif @question.case.industry == "Non-profit"
        @user.non_profit += 1
      elsif @question.case.industry == "Public sector"
        @user.public_sector += 1
      end

    else
      @answer.correctness = "Very good. Keep up the good work! 😎"
      @user.score += 2
      @attempt.score += 2

      if @question.skills == "Logic and rigorous thinking"
        @user.logic += 2
      elsif @question.skills == "Business sense & culture"
        @user.business_sense += 2
      elsif @question.skills == "Mathematics skills"
        @user.mathematics += 2
      end

            if @question.case.industry == "Consumer goods"
        @user.consumer_goods += 2
      elsif @question.case.industry == "Oil & gas"
        @user.oil_and_gas += 2
      elsif @question.case.industry == "Manufacturing"
        @user.manufacturing += 2
      elsif @question.case.industry == "Financial services"
        @user.financial_services += 2
      elsif @question.case.industry == "Private Equity"
        @user.private_equity += 2
      elsif @question.case.industry == "Pharmaceuticals"
        @user.pharmaceuticals += 2
      elsif @question.case.industry == "Airline"
        @user.airline += 2
      elsif @question.case.industry == "Technology, Media & Telecommunication"
        @user.tmt += 2
      elsif @question.case.industry == "Non-profit"
        @user.non_profit += 2
      elsif @question.case.industry == "Public sector"
        @user.public_sector += 2
      end

    end
    @user.save
    @attempt.save
    @next_question = Question.where(position: @question.position + 1, case_id: @question.case.id).last
    @answers = Answer.where(question_id: @question.id)
    authorize @answer
  end

  def voting
    @answer = Answer.find(params[:id])
    @answer.votes = @answer.votes + 1
    @answer.save
    authorize @answer
    redirect_to answer_path(@answer)
  end

  private

  def answer_params
    params.require(:answer).permit(:id, :content, :votes, :correctness, :question_id, :attempt_id)
  end

end
