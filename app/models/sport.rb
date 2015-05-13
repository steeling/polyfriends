class Sport < ActiveRecord::Base
	has_many :coaches

  validates :name, uniqueness: true
  validates_inclusion_of :gender, :in => %w( m f M F)
end
