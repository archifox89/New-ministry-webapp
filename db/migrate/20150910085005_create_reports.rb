class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :number
      t.string :subject
      t.date :date_issued

      t.timestamps
    end
  end
end
