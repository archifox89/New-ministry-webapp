class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :civil
      t.string :email
      t.string :level
      t.string :employment_date
      t.string :mobile
      t.string :folder
      t.string :title
      t.string :internal
      t.string :nationality
      t.string :vacation
      t.string :work_email
      t.string :experience

      t.timestamps
    end
  end
end
