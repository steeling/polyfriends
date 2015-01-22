class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable, :confirmable

	has_many :reviews
	
	validates :email, uniqueness: true

  mount_uploader :avatar, AvatarUploader


  def get_img
    self.avatar
  end

  def camelize_name
    self.first_name = first_name.camelize
    self.last_name = last_name.camelize
  end

  def full_name
    first_name.camelize + " " + last_name.camelize
  end

  # def recent_reviews
  #   self.reviews.order('updated_at DESC').limit(10)
end
