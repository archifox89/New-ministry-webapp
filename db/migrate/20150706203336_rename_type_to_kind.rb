class RenameTypeToKind < ActiveRecord::Migration
  def change
  	rename_column :vacations, :type, :kind
  end
end
