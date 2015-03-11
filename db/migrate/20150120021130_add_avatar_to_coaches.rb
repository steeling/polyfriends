class AddAvatarToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :avatar, :string
  end
end
