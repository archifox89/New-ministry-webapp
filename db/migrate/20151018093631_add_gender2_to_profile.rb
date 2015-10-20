class AddGender2ToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :gender2, :string
  end
end
