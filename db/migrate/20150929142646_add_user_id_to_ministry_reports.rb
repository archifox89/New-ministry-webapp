class AddUserIdToMinistryReports < ActiveRecord::Migration
  def change
    add_column :ministry_reports, :user_id, :integer
    add_index :ministry_reports, :user_id
  end
end
