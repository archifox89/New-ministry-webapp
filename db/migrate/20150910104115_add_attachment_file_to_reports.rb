class AddAttachmentFileToReports < ActiveRecord::Migration
  def self.up
    change_table :reports do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :reports, :file
  end
end
