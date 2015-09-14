class AddMonthRangeToMonths < ActiveRecord::Migration
  def change
    add_column :months, :month_range, :date
  end
end
