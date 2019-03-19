class QuestionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user.suscribed == true
  end

  def show?
    user.suscribed == true
  end

end
