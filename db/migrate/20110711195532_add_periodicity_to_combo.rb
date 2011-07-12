class AddPeriodicityToCombo < ActiveRecord::Migration
  def self.up
    add_column :combos, :periodicity, :integer
  end

  def self.down
    remove_column :combos, :periodicity
  end
end
