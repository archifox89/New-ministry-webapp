class ChangeDateTypeForNationality < ActiveRecord::Migration
  def change

  	change_column :profiles, :nationality,  :boolean

  end
end
