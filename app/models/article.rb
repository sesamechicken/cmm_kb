class Article < ActiveRecord::Base
  require 'will_paginate/array'

  # For new articles, validate the presence of each of these fields
  validates :author, presence: true
  validates :body, presence: true
  validates :title, presence: true
  validates :category_id, presence: true

  attr_accessible :author, :body, :public, :title, :category_id, :date, :revisions, :tag_list
  acts_as_taggable
  ActsAsTaggableOn.force_lowercase = true
  belongs_to :category

  def self.search(search, page)
  	search_string = "%" + search + "%"
    conditions = nil
    unless search.blank?
      conditions = ['title LIKE ? OR body LIKE ? OR tags LIKE ?', search_string, search_string, search_string]
    end
    paginate :per_page => 5, :page => page, :conditions => conditions, :order => 'title'

  end

end
