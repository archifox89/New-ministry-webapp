class AddUserIdToExteriorReports < ActiveRecord::Migration
  def change
    add_column :exterior_reports, :user_id, :integer
    add_index :exterior_reports, :user_id
  end
end
