class Picture < ActiveRecord::Base
	
 belongs_to :project

 has_attached_file :image,
 path: ":rails_root/public/system/:attachment/:id/:style/:filename",
 url: "/system/:attachment/:id/:style/:filename",
:styles => { :medium => "900x900>", :thumb => "300x300>" }

 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end

