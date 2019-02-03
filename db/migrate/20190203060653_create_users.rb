require 'active_record'
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password

      t.timestamps
  end
  add_index :users, :email
  add_index :users, :username
  end
end