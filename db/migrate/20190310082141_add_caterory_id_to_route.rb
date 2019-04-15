class AddCateroryIdToRoute < ActiveRecord::Migration[5.2]
  def change
    add_reference :routes, :category, foreign_key: true
  end
end
