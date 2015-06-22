class AddAcademicDegreeToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :academic_degree, :string
  end
end
