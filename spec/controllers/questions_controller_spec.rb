require 'rails_helper'

RSpec.describe QuestionsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns @questions" do
      question = Question.create
      get :index
      expect(assigns(:questions)).to eq([question])
    end
  end

  describe "SHOW index" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end



end
