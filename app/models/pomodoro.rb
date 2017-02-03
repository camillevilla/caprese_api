class Pomodoro < ApplicationRecord
  belongs_to :user
  has_many :pomodoro_tags
  has_many :tags, through: :pomodoro_tags
end
