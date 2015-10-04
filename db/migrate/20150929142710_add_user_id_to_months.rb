class AddUserIdToMonths < ActiveRecord::Migration
  def change
    add_column :months, :user_id, :integer
    add_index :months, :user_id
  end
end
