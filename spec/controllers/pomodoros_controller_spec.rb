require 'rails_helper'

RSpec.describe PomodorosController, type: :controller do
  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "responds with status code 200" do
      pomodoro = FactoryGirl.create(:pomodoro)
      get :show, params: { id: pomodoro.id }
      expect(response).to have_http_status(:success)
    end
  end
end
