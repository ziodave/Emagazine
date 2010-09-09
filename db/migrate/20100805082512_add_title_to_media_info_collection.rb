class AddTitleToMediaInfoCollection < ActiveRecord::Migration
  def self.up
    add_column :media_info_collections, :title, :string
  end

  def self.down
    remove_column :media_info_collections, :title
  end
end
