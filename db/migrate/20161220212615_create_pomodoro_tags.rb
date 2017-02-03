class CreatePomodoroTags < ActiveRecord::Migration[5.0]
  def change
    create_table :pomodoro_tags do |t|
      t.references :pomodoro, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
