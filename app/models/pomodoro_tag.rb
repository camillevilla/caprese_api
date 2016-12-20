class PomodoroTag < ApplicationRecord
  belongs_to :pomodoro
  belongs_to :tag
end
