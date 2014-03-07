module ArticlesHelper

	# Might not use this...looking into gem for tagging
	def show_tags(article)
		tags = article.tags.try(:split, ",") || tags = ""
		#tags = tags.split('/,/')
		if tags.length > 0
			tag_links = ""
			tags.each do |tag|
				tag_links +=  link_to tag, :controller => "articles", :action => 'search', :search => tag
			end
			return raw(tag_links)
		else
			return "No tags! Consider adding some for search performance."
		end
	end


end
