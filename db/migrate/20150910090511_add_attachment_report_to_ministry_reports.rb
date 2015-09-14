class AddAttachmentReportToMinistryReports < ActiveRecord::Migration
  def self.up
    change_table :ministry_reports do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :ministry_reports, :report
  end
end
