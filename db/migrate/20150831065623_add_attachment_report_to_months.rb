class AddAttachmentReportToMonths < ActiveRecord::Migration
  def self.up
    change_table :months do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :months, :report
  end
end
