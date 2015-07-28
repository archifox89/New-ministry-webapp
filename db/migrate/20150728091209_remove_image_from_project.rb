class RemoveImageFromProject < ActiveRecord::Migration
  def change

  	remove_column :projects, :image

  end
end
