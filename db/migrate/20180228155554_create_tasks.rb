class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.datetime :deadline

      t.integer :urgency, default: 0, null: false, limit: 1
      t.integer :importance, default: 0, null: false, limit: 1

      t.timestamps

    end
  end
end
