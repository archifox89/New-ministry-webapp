class AddCivilToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :civil, :string
  end
end
