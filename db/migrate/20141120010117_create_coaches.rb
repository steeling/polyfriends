class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :first_name
      t.string :last_name
      t.string :img_ref
      t.date :started
      t.string :gender

      t.decimal :rating

      t.timestamps
    end
    add_index :coaches, :first_name
    add_index :coaches, :last_name
  end
end
