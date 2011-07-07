class AlbumsBelongT0Gcategories < ActiveRecord::Migration
  def self.up
    add_column :albums, :gcategory_id, :integer
    add_index :albums, :gcategory_id
  end

  def self.down
    remove_column :albums, :gcategory_id, :integer
    remove_index :albums, :gcategory_id
  end
end
