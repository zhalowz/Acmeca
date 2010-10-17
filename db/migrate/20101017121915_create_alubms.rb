class CreateAlubms < ActiveRecord::Migration
  def self.up
    create_table :alubms do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :alubms
  end
end
