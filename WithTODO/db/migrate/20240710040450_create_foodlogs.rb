class CreateFoodlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :foodlogs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :todo, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
