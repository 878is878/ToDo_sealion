class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.string :name, null: false
      t.integer :friendship
      t.integer :hungry
      t.boolean :depart
      t.references :user, null: false, foreign_key: true
      t.integer :tasklist

      t.timestamps
    end
  end
end
