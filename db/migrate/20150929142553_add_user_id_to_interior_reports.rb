class AddUserIdToInteriorReports < ActiveRecord::Migration
  def change
    add_column :interior_reports, :user_id, :integer
    add_index :interior_reports, :user_id
  end
end
