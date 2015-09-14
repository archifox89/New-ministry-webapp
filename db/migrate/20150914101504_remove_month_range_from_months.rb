class RemoveMonthRangeFromMonths < ActiveRecord::Migration
  def change
    remove_column :months, :month_range, :string
  end
end
