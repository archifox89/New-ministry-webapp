class ChangeFieldsToProjects < ActiveRecord::Migration
  def change
  	change_column :projects, :design_cost, :string
    change_column :projects, :execution_cost, :string
  end
end
