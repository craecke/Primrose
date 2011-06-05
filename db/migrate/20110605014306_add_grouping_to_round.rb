class AddGroupingToRound < ActiveRecord::Migration
  def self.up
    add_column :rounds, :grouping, :string
  end

  def self.down
    remove_column :rounds, :grouping
  end
end
