class AnswerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.suscribed == true
  end

  def create?
    user.suscribed == true
  end

  def show?
    user.suscribed == true
  end

  def voting?
    user.suscribed == true
  end
end
