class AddReferences < ActiveRecord::Migration
  def change
  	add_reference :coaches, :sport, index: true
  	add_reference :coaches, :school, index: true

  	add_reference :reviews, :coach, index: true
  end
end