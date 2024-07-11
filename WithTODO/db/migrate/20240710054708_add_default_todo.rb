class AddDefaultTodo < ActiveRecord::Migration[7.1]
  def change
    change_column_default :todos, :friendship, from: nil, to: "0"
    change_column_default :todos, :hungry, from: nil, to: "0"
    add_reference :todos, :tasklist, foreign_key: true
    remove_column :todos, :tasklist, :integer
  end
end
