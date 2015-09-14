class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :status_update
      t.string :status_title

      t.timestamps
    end
  end
end
