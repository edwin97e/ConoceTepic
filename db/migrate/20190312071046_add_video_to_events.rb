class AddVideoToEvents < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :events, :video
  end
end
