class AddUserIdToInteriorCirculars < ActiveRecord::Migration
  def change
    add_column :interior_circulars, :user_id, :integer
    add_index :interior_circulars, :user_id
  end
end
