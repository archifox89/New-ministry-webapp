class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :company
      t.date :period_of_employment
      t.string :title

      t.timestamps
    end
  end
end
