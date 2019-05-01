class CasesController < ApplicationController
  def index
    @cases = policy_scope(Case)
    @last_attempt_completed = Attempt.all.where(completed: true, user_id: current_user).last
    @attempt = current_user.attempts.where(completed: true).last
  end

  def show
    @case = Case.find(params[:id])
    authorize @case
  end
end
