require 'rails_helper'

RSpec.describe "question/show.html.erb", :type => :view do
  before(:each) do
    @question = Question.new(title: "what's good?", content: "Gummy Bears")
    @answers = @question.answers.build(title: "Answer Title", content: "everything")
  end

  it "displays the question" do
    render :show
  end

  it "displays the answers for that question" do
  end


end
