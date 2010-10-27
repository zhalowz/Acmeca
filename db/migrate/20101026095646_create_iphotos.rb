class CreateIphotos < ActiveRecord::Migration
  def self.up
    create_table :iphotos do |t|
      t.references :installation

      t.timestamps
    end
    add_index :iphotos, :installation_id
  end

  def self.down
    drop_table :iphotos
  end
end
