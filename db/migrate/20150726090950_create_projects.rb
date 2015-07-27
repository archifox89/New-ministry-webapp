class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.boolean :phase
      t.string :location

      t.timestamps
    end
  end
end
