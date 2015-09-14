class Report < ActiveRecord::Base

	has_attached_file :file,
	path: ":rails_root/public/system/:attachment/:id/:style/:filename",
 	url: "/system/:attachment/:id/:style/:filename"
	validates_attachment_content_type :file, :content_type => ['application/pdf']

end
