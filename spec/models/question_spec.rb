require 'rails_helper'

RSpec.describe Question, :type => :model do
   it "should be valid" do
    question1 = Question.new(title: "boom?", content: "shakalaka?")
    expect(question1).to be_valid
  end
    it "should have_many answers" do
      should have_many(:answers)
    end




end
