class AddAttachmentReportToInteriorReports < ActiveRecord::Migration
  def self.up
    change_table :interior_reports do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :interior_reports, :report
  end
end
