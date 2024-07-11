class RemoveForeignKeyFromTodo < ActiveRecord::Migration[7.1]
  def change
    remove_reference :todos, :tasklist, null: false, foreign_key: true
  end
end
