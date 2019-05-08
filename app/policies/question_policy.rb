class QuestionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    if Case.find(record.case_id).position == 1
      return true
    else
      user.suscribed == true
    end
  end

  def show?
    if Case.find(record.case_id).position == 1
      return true
    else
      user.suscribed == true
    end
  end

end
