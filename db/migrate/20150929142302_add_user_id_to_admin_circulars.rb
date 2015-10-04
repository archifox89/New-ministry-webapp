class AddUserIdToAdminCirculars < ActiveRecord::Migration
  def change
    add_column :admin_circulars, :user_id, :integer
    add_index :admin_circulars, :user_id
  end
end
