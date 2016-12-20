require 'rails_helper'

RSpec.describe User, type: :model do
  describe "attributes" do
    it { is_expected.to have_db_column(:email) }
    it { is_expected.to have_db_column(:name) }
  end
  describe "associations" do
    it { is_expected.to have_many(:pomodoros) }
  end
end
