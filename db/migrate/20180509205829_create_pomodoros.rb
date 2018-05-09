class CreatePomodoros < ActiveRecord::Migration[5.2]
  def change
    create_table :pomodoros do |t|
      t.boolean :isPaused
      t.boolean :isStarted
      t.integer :minutes
      t.integer :pausedElapsed
      t.integer :seconds
      t.integer :secondsElapsed
      t.integer :secondsRemaining
      t.integer :timer

      t.timestamps
    end
  end
end
