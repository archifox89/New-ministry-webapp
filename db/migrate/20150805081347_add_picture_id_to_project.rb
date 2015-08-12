class AddPictureIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :picture_id, :integer
    add_index :projects, :picture_id
  end
end
