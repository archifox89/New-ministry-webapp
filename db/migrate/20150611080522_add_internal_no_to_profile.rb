class AddInternalNoToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :internal_no, :string
  end
end
