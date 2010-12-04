class ChangeDescriptionToText < ActiveRecord::Migration
  def self.up
 change_column :rentals, :description, :text
 change_column :sales, :description, :text
 change_column :services, :description, :text
  end

  def self.down
  end
end
