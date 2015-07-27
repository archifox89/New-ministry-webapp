class ChangeDataTypeForPhase < ActiveRecord::Migration
  def change

		change_column :projects, :phase, :string
  	
  end
end
