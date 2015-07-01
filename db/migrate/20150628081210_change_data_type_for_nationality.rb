class ChangeDataTypeForNationality < ActiveRecord::Migration
  def change

   change_column :profiles, :nationality,  :integer


  end
end
