class AddStatusIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :status_id, :integer
    add_index :projects, :status_id
  end
end
