class Category < ActiveRecord::Base
  # Vaidation
  validates :title, presence: true

  attr_accessible :public, :title
  has_many :articles
end
