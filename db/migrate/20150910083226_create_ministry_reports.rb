class CreateMinistryReports < ActiveRecord::Migration
  def change
    create_table :ministry_reports do |t|
      t.string :number
      t.string :subject
      t.date :date_issued

      t.timestamps
    end
  end
end
