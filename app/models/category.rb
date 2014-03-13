class Category < ActiveRecord::Base
  attr_accessible :public, :title
  has_many :articles
end
