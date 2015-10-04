class AddUserIdToCirculars < ActiveRecord::Migration
  def change
    add_column :circulars, :user_id, :integer
    add_index :circulars, :user_id
  end
end
