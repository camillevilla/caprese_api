require 'rails_helper'

RSpec.describe PomodoroTag, type: :model do
  describe "attributes" do
    it { is_expected.to have_db_column(:pomodoro_id) }
    it { is_expected.to have_db_column(:tag_id) }
  end
  
  describe "associations" do
    it { is_expected.to belong_to(:pomodoro) }
    it { is_expected.to belong_to(:tag) }
  end
end
