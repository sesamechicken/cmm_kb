class AddTagsAndRevisioncountToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :tags, :string
    add_column :articles, :revisions, :int
  end
end
