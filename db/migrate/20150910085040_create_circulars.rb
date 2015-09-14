class CreateCirculars < ActiveRecord::Migration
  def change
    create_table :circulars do |t|
      t.string :number
      t.string :subject
      t.date :date_issued

      t.timestamps
    end
  end
end
