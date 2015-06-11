class AddDateOfEmploymentToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :date_of_employment, :date
  end
end
