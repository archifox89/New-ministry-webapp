class AddFolderToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :folder, :string
  end
end
