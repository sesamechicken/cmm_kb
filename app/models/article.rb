class Article < ActiveRecord::Base
  attr_accessible :author, :body, :public, :title, :category, :date, :revisions, :tags
  
  def self.search(search)
  	search_string = "%" + search + "%"
  	find(:all, :conditions => ['title LIKE ? OR body LIKE ? OR tags LIKE ?', search_string, search_string, search_string])
  end

end
