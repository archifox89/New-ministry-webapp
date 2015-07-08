class ChangeDateTypeForNationality < ActiveRecord::Migration
  def change

  	change_column :profiles, :nationality,  'boolean USING CAST(nationality AS boolean)'

  end
end
