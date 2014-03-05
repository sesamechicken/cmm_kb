class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :date, :datetime
    add_column :articles, :category, :string
  end
end
