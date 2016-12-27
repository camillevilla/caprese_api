class Tag < ApplicationRecord
  has_many :pomodoro_tags
  has_many :pomodoros, through: :pomodoro_tags

  validates :name,
    presence: true,
    uniqueness: true
end
