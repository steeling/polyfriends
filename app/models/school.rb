class School < ActiveRecord::Base
	has_many :coaches
  
  self.per_page = 25

  validates :name, uniqueness: true, presence: true
  validates :city, presence: true
  validates :state, presence: true

  default_scope { order('name') } 

	#https://inventory.data.gov/dataset/032e19b4-5a90-41dc-83ff-6e4cd234f565/resource/38625c3d-5388-4c16-a30f-d105432553a4

  def rating(selected_sport=nil)
    coaches = get_coaches(selected_sport)
    if coaches.count == 0 then 0 else coaches.map(&:rating).sum / coaches.count end
  end

  def num_reviews
    coaches = get_coaches
    coaches.map(&:reviews).flatten.count
  end

  def get_coaches(selected_sport=nil)
    if selected_sport.nil?
      coaches = self.coaches
    else
      coaches = self.coaches.where(sport: selected_sport) 
    end
  end
end
