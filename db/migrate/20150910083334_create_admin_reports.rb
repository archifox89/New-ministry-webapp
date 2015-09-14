class CreateAdminReports < ActiveRecord::Migration
  def change
    create_table :admin_reports do |t|
      t.string :number
      t.string :subject
      t.date :date_issued

      t.timestamps
    end
  end
end
