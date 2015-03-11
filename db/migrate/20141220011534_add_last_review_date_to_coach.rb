class AddLastReviewDateToCoach < ActiveRecord::Migration
  def change
  	add_column :coaches, :last_review, :date
  end
end
