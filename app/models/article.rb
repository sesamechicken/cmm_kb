class Article < ActiveRecord::Base
  attr_accessible :author, :body, :public, :title, :category, :date
end
