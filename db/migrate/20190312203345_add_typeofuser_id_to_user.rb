class AddTypeofuserIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :typeofuser, foreign_key: true
  end
end
