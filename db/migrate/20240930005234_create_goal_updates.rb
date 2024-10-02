class CreateGoalUpdates < ActiveRecord::Migration[7.2]
  def change
    create_table :goal_updates do |t|
      t.references :goal, null: false, foreign_key: true
      t.text :progress_update

      t.timestamps
    end
  end
end
