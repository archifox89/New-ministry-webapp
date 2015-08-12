class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :design_cost, :string
    add_column :projects, :execution_cost, :string
    add_column :projects, :signature_date, :date
  end
end
