class ChangeGenderToBoolean < ActiveRecord::Migration
  def change

		change_column :profiles, :gender,  'boolean USING CAST(gender AS boolean)'

  end
end
