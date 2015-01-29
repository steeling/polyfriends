class AddTitleToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :title, :string
  end
end
