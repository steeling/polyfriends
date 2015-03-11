class ChangeCoachesLastReviewToTimestamp < ActiveRecord::Migration
  def change
    change_column :coaches, :last_review, :datetime
  end
end
