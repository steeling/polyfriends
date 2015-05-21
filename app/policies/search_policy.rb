class SearchPolicy < ApplicationPolicy
  attr_reader :user, :search

  def initialize(user, search)
    @user = user
    @search = search
  end

  def search?
    true
  end
end