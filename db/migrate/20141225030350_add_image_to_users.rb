class AddImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :img_ref, :string
  end
end
