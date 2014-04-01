class Tag < ActiveRecord::Base

	def list(term)
		search_string = "%" + search + "%"
		find(:all, :conditions => ['name LIKE ?', search_string])
	end


end