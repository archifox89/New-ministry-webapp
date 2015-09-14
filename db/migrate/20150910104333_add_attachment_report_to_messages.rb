class AddAttachmentReportToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :report
    end
  end

  def self.down
    remove_attachment :messages, :report
  end
end
