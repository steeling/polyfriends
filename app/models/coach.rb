class Coach < ActiveRecord::Base
	belongs_to :sport
	belongs_to :school

	has_many :reviews

  scope :recently_reviewed, -> { order(:last_review).limit(20)}

  mount_uploader :avatar, AvatarUploader

  validates :school_id, presence: true

	def get_img
    self.avatar
	end

  def new_review
    self.last_review = Time.current
    save
  end

  def rating
    (Review.where(coach_id: self.id).sum(:rating) / self.reviews.count.to_f).to_f
  end

  def num_ratings
    self.reviews.count
  end

  def full_name
    first_name.camelize + " " + last_name.camelize
  end

  def full_name_and_rating
    full_name + " - " + rating.to_s
  end
end
