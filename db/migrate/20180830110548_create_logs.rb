class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer  :user_id, index: true
      t.datetime :start_at
      t.datetime :end_at
      t.string   :description

      t.timestamps
    end
  end
end
