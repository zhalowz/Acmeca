class CreateIphotos < ActiveRecord::Migration
  def self.up
    create_table :iphotos do |t|
      t.references :installation
      t.timestamps
    end
    add_index :photos, :album_id
  end

  def self.down
    drop_table :iphotos
  end
end
