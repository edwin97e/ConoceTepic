class AddImgToSites < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :sites, :img
  end
end
