class RemoveMonthRangeFromMonths < ActiveRecord::Migration
  def change
    remove_column :months, :month_range, :date
  end
end
