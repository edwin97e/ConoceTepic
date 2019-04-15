class AddVideoToSites < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :sites, :video
  end
end
