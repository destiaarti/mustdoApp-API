class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, limit: 40, null: false
      t.string :email
      t.string :password
      t.datetime :last_login
    end

    add_index :users, :email, unique: true
  end
end
