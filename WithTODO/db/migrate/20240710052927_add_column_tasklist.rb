class AddColumnTasklist < ActiveRecord::Migration[7.1]
  def change
    add_reference :tasklists, :todo, foreign_key: true 
  end
end
