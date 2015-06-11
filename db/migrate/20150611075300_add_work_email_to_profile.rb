class AddWorkEmailToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :work_email, :string
  end
end
