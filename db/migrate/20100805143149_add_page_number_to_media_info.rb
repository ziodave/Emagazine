class AddPageNumberToMediaInfo < ActiveRecord::Migration
  def self.up
    add_column :media_infos, :page_number, :integer
  end

  def self.down
    remove_column :media_infos, :page_number
  end
end
