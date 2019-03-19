class CasesController < ApplicationController
  def index
    @cases = policy_scope(Case)
    @attempt = current_user.attempts.where(completed: true).last
  end

  def show
    @case = Case.find(params[:id])
    authorize @case
  end
end
