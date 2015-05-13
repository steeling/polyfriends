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
    true
  end

  def edit?
    true
  end

  def create?
  end

  def update?
  end

  def destroy?
  end

  def search?
    true
  end

  def create_review?
  end
end
