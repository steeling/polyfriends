class SchoolPolicy < ApplicationPolicy
  attr_reader :user, :school

  def initialize(user, school)
    @user = user
    @school = school
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    true
  end

  def edit?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
