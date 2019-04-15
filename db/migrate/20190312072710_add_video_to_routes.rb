class AddVideoToRoutes < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :routes, :video
  end
end
