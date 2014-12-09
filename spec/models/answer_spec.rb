require 'rails_helper'

RSpec.describe Answer, :type => :model do
  it "should be valid" do
    answer1 = Answer.new(title: "boom", content: "shakalaka")
    expect(answer1).to be_valid
  end

  it "should belong_to a question" do
    should belong_to(:question)
  end


end
