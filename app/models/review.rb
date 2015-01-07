class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :coach

  validates :rating, presence: true
  validates :text, length: { minimum: 25, maximum: 5000 }
end
