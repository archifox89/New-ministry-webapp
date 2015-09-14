class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :number
      t.string :subject
      t.date :date_issued

      t.timestamps
    end
  end
end
