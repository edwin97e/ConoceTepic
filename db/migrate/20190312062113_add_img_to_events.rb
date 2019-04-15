class AddImgToEvents < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :events, :img
  end
end
