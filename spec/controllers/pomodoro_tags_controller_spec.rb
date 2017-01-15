require 'rails_helper'

RSpec.describe PomodoroTagsController, type: :controller do

  it { should use_before_action(:authenticate_user!) }
  
  describe "GET #index" do
    it "rejects non-authenticated users" do
      get :index
      expect(response).to have_http_status(401)
    end

    # it "responds with status code 200" do
    #   get :index
    #   expect(response).to have_http_status(:success)
    # end
  end

  describe "GET #show" do
    it "rejects non-authenticated users" do
      pomodorotag = FactoryGirl.create(:pomodoro_tag)
      get :show, params: { id: pomodorotag.id }
      expect(response).to have_http_status(401)
    end
    # it "responds with status code 200" do
    #   pomodorotag = FactoryGirl.create(:pomodoro_tag)
    #   get :show, params: { id: pomodorotag.id }
    #   expect(response).to have_http_status(:success)
    # end
  end
end
