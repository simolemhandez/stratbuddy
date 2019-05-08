class CasePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record.user = current_user
  end

  def show?
    if record.position == 1
      return true
    else
      user.suscribed == true
    end
  end
end
