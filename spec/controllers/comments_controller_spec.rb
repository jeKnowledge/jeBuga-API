require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "GET #sessions" do
    it "returns http success" do
      get :sessions
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #games" do
    it "returns http success" do
      get :games
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #themes" do
    it "returns http success" do
      get :themes
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #users" do
    it "returns http success" do
      get :users
      expect(response).to have_http_status(:success)
    end
  end

end
