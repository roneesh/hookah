class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.integer :user_id
      t.integer :frequency

      t.timestamps
    end
  end
end
