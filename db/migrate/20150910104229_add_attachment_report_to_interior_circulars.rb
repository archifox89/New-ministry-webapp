class AddAttachmentReportToInteriorCirculars < ActiveRecord::Migration
  def self.up
    change_table :interior_circulars do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :interior_circulars, :report
  end
end
