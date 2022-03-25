class Task < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.datetime :start_date
      t.datetime :expired_date
      t.string :type
      t.string :priority
      t.datetime :last_send_notification
      t.string :send_notification_in
    end
  end
end
