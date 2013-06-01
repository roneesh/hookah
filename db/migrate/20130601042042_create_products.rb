class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.string :flavor
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
