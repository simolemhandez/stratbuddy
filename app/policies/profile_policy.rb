class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def dashboard?
    record == user
  end

  def skills?
    record == user
  end

  def industries?
    record == user
  end

  def knowledge?
    record == user
  end
end
