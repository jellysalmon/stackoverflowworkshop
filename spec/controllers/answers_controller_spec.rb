require 'rails_helper'

RSpec.describe AnswersController, :type => :controller do

  describe "GET index" do
    #same as expect(response).to render_template(:new)
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns @answers" do
      answer = Answer.create
      get :index
      expect(assigns(:answers)).to eq([answer])
    end
  end

end
