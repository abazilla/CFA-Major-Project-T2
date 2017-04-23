class ProjectPolicy < ApplicationPolicy

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    @record.user == @user
  end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
