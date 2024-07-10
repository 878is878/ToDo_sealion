class ChangeColumnDefaultToTasks < ActiveRecord::Migration[7.1]
  def change
    change_column_default :tasks, :completed, from: nil, to: "0"
    change_column_default :tasks, :open, from: nil, to: false
  end
end
