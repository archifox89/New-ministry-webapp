class AddWorkExperienceToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :work_experience, :string
  end
end
