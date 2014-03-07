module ArticlesHelper


	def show_tags(article)
		tags = article.tags.try(:split, ",") || tags = ""
		#tags = tags.split('/,/')
		if tags.length > 0
			tags.each do |t|
				return "tag -> " + t
			end
		
		else
			return "No tags! Consider adding some for search performance."
		end
	end


end
