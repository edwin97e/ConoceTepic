class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :short_description
      t.string :long_description
      t.string :sites
      t.float :cost
      t.string :link_video

      t.timestamps
    end
  end
end
