class AddProducerFlagToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :producer, :boolean
  end

  def self.down
    remove_column :users, :producer
  end
end
