class ChangeSubjectAttributeDataTypeForAdminCirculars < ActiveRecord::Migration
  def change
		change_column :admin_circulars, :subject, :text
  end
end
