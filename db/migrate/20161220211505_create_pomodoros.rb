class CreatePomodoros < ActiveRecord::Migration[5.0]
  def change
    create_table :pomodoros do |t|
      t.references :user, foreign_key: true
      t.date :start_time
      t.datetime :end_time
      t.string :description

      t.timestamps
    end
  end
end
