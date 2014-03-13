class DropRichRichFiles < ActiveRecord::Migration
  def up
  	drop_table :rich_rich_files
  	drop_table :searches
  end

  def down
  end
end
