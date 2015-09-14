class AddProjectIdToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :project_id, :integer
    add_index :statuses, :project_id
  end
end
