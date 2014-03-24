class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :date, :datetime
    add_column :articles, :category_id, :integer
  end
end
