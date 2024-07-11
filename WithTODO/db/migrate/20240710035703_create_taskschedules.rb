class CreateTaskschedules < ActiveRecord::Migration[7.1]
  def change
    create_table :taskschedules do |t|
      t.datetime :start_at, null: false
      t.datetime :actual_start_at
      t.datetime :end_at, null: false
      t.datetime :actual_end_at
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
