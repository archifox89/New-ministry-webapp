class AddUserIdToAdminReports < ActiveRecord::Migration
  def change
    add_column :admin_reports, :user_id, :integer
    add_index :admin_reports, :user_id
  end
end
