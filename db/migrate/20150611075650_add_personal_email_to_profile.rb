class AddPersonalEmailToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :personal_email, :string
  end
end
