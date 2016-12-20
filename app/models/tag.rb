class Tag < ApplicationRecord
  has_many :pomodoro_tags
  has_many :pomodoros, through: :pomodoro_tags
end
