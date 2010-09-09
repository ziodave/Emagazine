class AddSourceToMediaInfoCollection < ActiveRecord::Migration
  def self.up
    add_column :media_info_collections, :source_file_name, :string
    add_column :media_info_collections, :source_content_type, :string
    add_column :media_info_collections, :source_file_size, :integer
    add_column :media_info_collections, :source_updated_at, :datetime
  end

  def self.down
    remove_column :media_info_collections, :source_updated_at
    remove_column :media_info_collections, :source_file_size
    remove_column :media_info_collections, :source_content_type
    remove_column :media_info_collections, :source_file_name
  end
end
