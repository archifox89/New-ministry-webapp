class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :employee_name, :string
  end
end
