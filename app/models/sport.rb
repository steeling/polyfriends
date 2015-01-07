class Sport < ActiveRecord::Base
	has_many :coaches

  validates :name, uniqueness: true
end
