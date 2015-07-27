class ChangeDataTypeForStatus < ActiveRecord::Migration
  def change

		change_column :projects, :status, :string

  end
end
