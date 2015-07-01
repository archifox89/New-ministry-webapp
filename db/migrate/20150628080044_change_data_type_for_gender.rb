class ChangeDataTypeForGender < ActiveRecord::Migration
  def change

  	change_column :profiles, :gender,  :integer

  end
end
