class Article < ActiveRecord::Base
  attr_accessible :author, :body, :public, :title, :category_id, :date, :revisions, :tags
  belongs_to :category

  def self.search(search)
  	search_string = "%" + search + "%"
  	find(:all, :conditions => ['title LIKE ? OR body LIKE ? OR tags LIKE ?', search_string, search_string, search_string])
  end

end
