class CreateMediaInfos < ActiveRecord::Migration
  def self.up
    create_table :media_infos do |t|
      t.string :url
      t.references :media_info_collection

      t.timestamps
    end
  end

  def self.down
    drop_table :media_infos
  end
end
