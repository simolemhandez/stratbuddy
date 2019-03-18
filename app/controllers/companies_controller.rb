class CompaniesController < ApplicationController

  def follow
    @user = current_user
    @company = Company.find(params[:id])
    @user.follow(@company)
    redirect_to dashboard_path
  end

  def unfollow
    @user = current_user
    @company = Company.find(params[:id])
    @user.stop_following(@company)
    redirect_to dashboard_path
  end
end
