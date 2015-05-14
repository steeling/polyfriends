class ReviewPolicy < ApplicationPolicy
  attr_reader :user, :review

  def initialize(user, review)
    @user = user
    @review = review
  end

  def new?
    true
  end

  def edit?
    review.user == @user
  end

  def create?
    true
  end

  def update?
    review.user == @user
  end

  def destroy?
    review.user == @user || admin?
  end
end