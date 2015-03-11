class AddColumnsToSchools < ActiveRecord::Migration
  def change
  	add_column :schools, :address, :string
  	add_column :schools, :zip, :int
  end
end
