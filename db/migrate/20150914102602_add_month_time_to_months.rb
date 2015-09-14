class AddMonthTimeToMonths < ActiveRecord::Migration
  def change
    add_column :months, :month_time, :date
  end
end
