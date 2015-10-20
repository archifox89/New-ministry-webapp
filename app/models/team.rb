class Team < ActiveRecord::Base

	belongs_to :project
	belongs_to :user
	validates :member, uniqueness: { scope: :project_id }

end

  
    