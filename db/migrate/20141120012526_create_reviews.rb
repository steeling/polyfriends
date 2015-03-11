class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :text, :limit => 6000
      t.decimal :rating
      t.belongs_to :user

      t.timestamps
    end
  end
end
