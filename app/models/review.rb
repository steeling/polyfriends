class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :coach

  validates :rating, presence: true, numericality: {greater_than: 0, less_than_or_equal_to: 5}
  validates :text, length: { minimum: 25, maximum: 5000 }
  validates_uniqueness_of :coach_id, scope: :user_id

end
