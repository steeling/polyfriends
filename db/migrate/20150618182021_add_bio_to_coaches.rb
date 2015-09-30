class AddBioToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :bio, :string
  end
end
