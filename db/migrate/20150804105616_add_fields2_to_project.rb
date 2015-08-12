class AddFields2ToProject < ActiveRecord::Migration
  def change
    add_column :projects, :client, :string
    add_column :projects, :collaborator, :string
    add_column :projects, :structural, :string
    add_column :projects, :quantity, :string
    add_column :projects, :m_e_engineer, :string
  end
end
