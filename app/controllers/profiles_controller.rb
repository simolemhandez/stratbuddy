class ProfilesController < ApplicationController
  def dashboard
    @user = current_user
    @cases = Case.all
    @last_attempt = Attempt.where(user_id: current_user).last
    @last_attempt_completed = Attempt.all.where(completed: true, user_id: current_user).last
  end
end
