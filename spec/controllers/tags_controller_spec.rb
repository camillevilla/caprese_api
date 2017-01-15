require 'rails_helper'

RSpec.describe TagsController, type: :controller do
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
      tag = FactoryGirl.create(:tag)
      get :show, params: { id: tag.id }
      expect(response).to have_http_status(401)
    end
    # it "responds with status code 200" do
    #   tag = FactoryGirl.create(:tag)
    #   get :show, params: { id: tag.id }
    #   expect(response).to have_http_status(:success)
    # end
  end
end
