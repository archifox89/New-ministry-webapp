class Vacation < ActiveRecord::Base

	def days_spread
	  (end_date.to_date - start_date.to_date).to_i
	end

end
