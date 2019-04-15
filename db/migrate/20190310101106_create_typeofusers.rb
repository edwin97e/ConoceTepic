class CreateTypeofusers < ActiveRecord::Migration[5.2]
  def change
    create_table :typeofusers do |t|
      t.string :name

      t.timestamps
    end
  end
end
