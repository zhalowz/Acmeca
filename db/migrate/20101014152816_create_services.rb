class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.integer :id
      t.string :description
      t.string :header

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end