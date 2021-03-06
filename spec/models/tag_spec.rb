require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe "attributes" do
    it { is_expected.to have_db_column(:name) }
  end

  describe "validations" do
    it { should validate_presence_of(:name)}
    it { should validate_uniqueness_of(:name)}
  end
  
  describe "associations" do
    it { is_expected.to have_many(:pomodoro_tags) }
    it { is_expected.to have_many(:pomodoros).through(:pomodoro_tags) }
  end
end
