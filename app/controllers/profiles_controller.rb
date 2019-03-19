class ProfilesController < ApplicationController
  def dashboard
    @user = current_user
    @companies = Company.all
    @cases = Case.all
    @last_attempt = Attempt.where(user_id: current_user).last
    @last_attempt_completed = Attempt.all.where(completed: true, user_id: current_user).last
    authorize @user
  end

  def skills
    @user = current_user
    @companies = Company.all
    @cases = Case.all
    @questions_business = Question.where(skills: "Business sense & culture")
    @questions_logic = Question.where(skills: "Logic and rigorous thinking")
    @questions_math = Question.where(skills: "Mathematics skills")
    authorize @user
  end

  def industries
    @user = current_user
    @companies = Company.all
    @cases = Case.all
    authorize @user
  end

  def knowledge
    @user = current_user
    authorize @user
  end
end
