class ChangeDataTypeForMonth < ActiveRecord::Migration
  def change

  	change_column :months, :month_range, :date

  end
end
