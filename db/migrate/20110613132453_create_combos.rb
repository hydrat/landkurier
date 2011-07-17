class CreateCombos < ActiveRecord::Migration
  def self.up
    create_table :combos do |t|
      t.references :provider, :polymorphic => true
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.string :type
      t.string :size
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :combos
  end
end
