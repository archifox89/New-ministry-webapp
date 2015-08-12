class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :contractor, :string
    add_column :projects, :designer, :string
    add_column :projects, :area, :string
    add_column :projects, :budget, :string
    add_column :projects, :project_start, :date
    add_column :projects, :construction_period, :string
    add_column :projects, :expected_date, :date
  end
end
