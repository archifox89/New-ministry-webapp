class ChangeGenderToBoolean < ActiveRecord::Migration
  def change

		change_column :profiles, :gender,  :boolean

  end
end
