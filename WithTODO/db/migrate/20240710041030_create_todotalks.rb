class CreateTodotalks < ActiveRecord::Migration[7.1]
  def change
    create_table :todotalks do |t|
      t.text :contents, null: false
      t.integer :talk_group

      t.timestamps
    end
  end
end
