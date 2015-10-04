class Month < ActiveRecord::Base

	belongs_to :user
	belongs_to :project
	has_attached_file :report,
	path: ":rails_root/public/system/:attachment/:id/:style/:filename",
 	url: "/system/:attachment/:id/:style/:filename"
	validates_attachment_content_type :report, :content_type => ['application/pdf']


end
