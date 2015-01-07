class School < ActiveRecord::Base
	has_many :coaches

  validates :name, uniqueness: true, presence: true
  validates :city, presence: true
  validates :state, presence: true

  default_scope { order('name') } 
	#https://inventory.data.gov/dataset/032e19b4-5a90-41dc-83ff-6e4cd234f565/resource/38625c3d-5388-4c16-a30f-d105432553a4
end
