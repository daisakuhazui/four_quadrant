class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.string :title, null: false
      t.datetime :deadline

      t.integer :quadrant, default: 0, null: false, limit: 1

      t.timestamps

    end
  end
end
