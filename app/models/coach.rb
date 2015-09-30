class Coach < ActiveRecord::Base
	belongs_to :sport
	belongs_to :school

	has_many :reviews

  default_scope {order(:last_name)}

  scope :recently_reviewed, -> { where.not(last_review: nil).order('last_review DESC').limit(20)}

  mount_uploader :avatar, AvatarUploader

  validates :school_id, presence: true
  validates :sport_id, presence: true
  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :title, presence: true, allow_blank: false
  validates :bio, length: {maximum: 20}


	def get_img
    self.avatar
	end

  def new_review(time)
    self.last_review = time
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
