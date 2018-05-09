class CreatePauses < ActiveRecord::Migration[5.2]
  def change
    create_table :pauses do |t|
      t.integer :seconds
      t.string :description
      t.references :pomodoro, foreign_key: true

      t.timestamps
    end
  end
end
