class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :short_description
      t.string :long_description
      t.float :latitude
      t.float :longitude
      t.float :cost
      t.string :begining_hour
      t.string :ending_hour
      t.string :link_video

      t.timestamps
    end
  end
end
