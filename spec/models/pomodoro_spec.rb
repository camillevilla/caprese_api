require 'rails_helper'

RSpec.describe Pomodoro, type: :model do
  describe "attributes" do
    it { is_expected.to have_db_column(:user_id) }
    it { is_expected.to have_db_column(:start_time) }
    it { is_expected.to have_db_column(:end_time) }
    it { is_expected.to have_db_column(:description) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:pomodoro_tags) }
    it { is_expected.to have_many(:tags).through(:pomodoro_tags) }
  end
end
