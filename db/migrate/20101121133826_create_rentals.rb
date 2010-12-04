class CreateRentals < ActiveRecord::Migration
  def self.up
    create_table :rentals do |t|
      t.string :header
      t.string :description

      t.timestamps
    end
  end
end

  def self.down
    drop_table :rentals
  end
end
