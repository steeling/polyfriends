class AddGenderToSports < ActiveRecord::Migration
  def change
    add_column :sports, :gender, :string, limit: 1
  end
end
