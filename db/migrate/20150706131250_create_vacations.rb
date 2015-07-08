class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :type
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
