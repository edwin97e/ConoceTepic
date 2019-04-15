class AddCateroryIdToSite < ActiveRecord::Migration[5.2]
  def change
    add_reference :sites, :category, foreign_key: true
  end
end
