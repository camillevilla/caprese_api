class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable#,
          # :confirmable , :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :pomodoros
end
