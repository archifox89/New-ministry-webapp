class ChangeDataTypeForMonthTimeMonths < ActiveRecord::Migration
  def change
  	change_column :months, :month_time, :string
  end
end
