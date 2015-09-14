class AddAttachmentReportToExteriorReports < ActiveRecord::Migration
  def self.up
    change_table :exterior_reports do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :exterior_reports, :report
  end
end
