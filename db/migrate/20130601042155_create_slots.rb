class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.string :box_id
      t.string :product_id

      t.timestamps
    end
  end
end
