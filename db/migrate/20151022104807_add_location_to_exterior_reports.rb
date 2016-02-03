class AddLocationToExteriorReports < ActiveRecord::Migration
  def change
    add_column :exterior_reports, :location, :string
  end
end
