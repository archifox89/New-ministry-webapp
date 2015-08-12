class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
    add_index :teams, :user_id
    add_index :teams, :project_id
  end
end
