class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @cases = Case.all
    @myclass = "navbar-lewagon-home"
  end
end
