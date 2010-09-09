class AddViewToMediaInfo < ActiveRecord::Migration
  def self.up
    add_column :media_infos, :view_file_name, :string
    add_column :media_infos, :view_content_type, :string
    add_column :media_infos, :view_file_size, :integer
    add_column :media_infos, :view_updated_at, :datetime
  end

  def self.down
    remove_column :media_infos, :view_updated_at
    remove_column :media_infos, :view_file_size
    remove_column :media_infos, :view_content_type
    remove_column :media_infos, :view_file_name
  end
end
