class AddProjectIdToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :project_id, :integer
    add_index :pictures, :project_id
  end
end
