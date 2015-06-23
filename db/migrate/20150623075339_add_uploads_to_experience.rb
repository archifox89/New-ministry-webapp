class AddUploadsToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :uploads, :string
  end
end
