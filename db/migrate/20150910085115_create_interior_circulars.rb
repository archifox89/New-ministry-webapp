class CreateInteriorCirculars < ActiveRecord::Migration
  def change
    create_table :interior_circulars do |t|
      t.string :number
      t.string :subject
      t.date :date_issued

      t.timestamps
    end
  end
end
