class SportPolicy < ApplicationPolicy
  attr_reader :user, :sport

  def initialize(user, sport)
    @user = user
    @sport = sport
  end

  def index?
    true
  end

  def new?
    admin?
  end

  def show?
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

  def set_selected?
    true
  end

  def clear_selected?
    true
  end
end
