class AddAttachmentReportToCirculars < ActiveRecord::Migration
  def self.up
    change_table :circulars do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :circulars, :report
  end
end
