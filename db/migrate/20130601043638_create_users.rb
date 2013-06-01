class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
