class CoachPolicy < ApplicationPolicy
  attr_reader :user, :coach

  def initialize(user, coach)
    @user = user
    @coach = coach
  end

  def index?
    true
  end

  def recents?
    true
  end

  def show?
    true
  end

  def new?
    admin?
  end

  def edit?
    admin?
  end

  def create?
    admin?
  end

  def update?
    admin?
  end

  def destroy?
    admin?
  end

  def search?
    true
  end

  def create_review?
    true #how to limit this???
  end
end
