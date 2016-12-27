require 'rails_helper'

RSpec.describe PomodorosController, type: :controller do
  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
  end

  describe "GET #show" do
    it "responds with status code 200" do
      get :show, { id: game.id }
      expect(response).to have_http_status 200
    end
  end
end
