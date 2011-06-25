class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.references :combo
      t.references :user
      t.integer :periodicity
      t.date :duration
      t.text :exclusions

      t.timestamps
    end
  end

  def self.down
    drop_table :subscriptions
  end
end
