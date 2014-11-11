class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :grade_level

      t.timestamps
    end
    add_index :users, :first_name
    add_index :users, :last_name
  end
end
