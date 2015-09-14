class AddAttachmentReportToAdminReports < ActiveRecord::Migration
  def self.up
    change_table :admin_reports do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :admin_reports, :report
  end
end
