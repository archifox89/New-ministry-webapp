class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.string :month_range
      t.string :phase

      t.timestamps
    end
  end
end
