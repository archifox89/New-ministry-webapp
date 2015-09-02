class AddProjectIdToMonths < ActiveRecord::Migration
  def change
    add_column :months, :project_id, :integer
    add_index :months, :project_id
  end
end
