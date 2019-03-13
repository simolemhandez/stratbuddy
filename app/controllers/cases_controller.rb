class CasesController < ApplicationController
  def index
    @cases = Case.all
    @attempt = current_user.attempts.where(completed: true).last
  end

  def show
    @case = Case.find(params[:id])
  end
end
