class DropPublicColumnFromCategories < ActiveRecord::Migration
  def up
  	remove_column :categories, :public
  end

  def down
  end
end
