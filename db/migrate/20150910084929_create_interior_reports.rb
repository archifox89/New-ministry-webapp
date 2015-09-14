class CreateInteriorReports < ActiveRecord::Migration
  def change
    create_table :interior_reports do |t|
      t.string :number
      t.string :subject
      t.date :date_issued

      t.timestamps
    end
  end
end
