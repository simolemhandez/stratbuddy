class AnswerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def new?
    if Case.find(Question.find(record.question_id).case_id).position == 1
      return true
    else
      user.suscribed == true
    end
  end

  def create?
    if Case.find(Question.find(record.question_id).case_id).position == 1
      return true
    else
      user.suscribed == true
    end
  end

  def show?
    if Case.find(Question.find(record.question_id).case_id).position == 1
      return true
    else
      user.suscribed == true
    end

  end

  def voting?
    if Case.find(Question.find(record.question_id).case_id).position == 1
      return true
    else
      user.suscribed == true
    end
  end
end
