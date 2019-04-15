class AddImgToRoutes < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :routes, :img
  end
end
