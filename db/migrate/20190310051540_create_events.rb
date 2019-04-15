class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :short_description
      t.string :long_description
      t.float :latitude
      t.float :longitude
      t.float :cost
      t.integer :state, default:0
      t.string :begining_hour
      t.string :ending_hour
      t.string :begining_date
      t.string :ending_date
      t.string :link_video

      t.timestamps
    end
  end
end
