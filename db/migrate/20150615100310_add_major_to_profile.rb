class AddMajorToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :major, :string
  end
end
