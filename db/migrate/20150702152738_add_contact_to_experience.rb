class AddContactToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :contact_no, :string
    add_column :experiences, :website, :string
  end
end
