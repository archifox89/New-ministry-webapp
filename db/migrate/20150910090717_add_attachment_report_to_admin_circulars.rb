class AddAttachmentReportToAdminCirculars < ActiveRecord::Migration
  def self.up
    change_table :admin_circulars do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :admin_circulars, :report
  end
end
