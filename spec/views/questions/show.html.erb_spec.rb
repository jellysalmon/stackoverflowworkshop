require 'rails_helper'
require 'capybara/rspec'

describe "questions/show.html.erb" do
  # before(:each) do
  #   @question = Question.new(title: "what's good?", content: "Gummy Bears")
  #   @answers = @question.answers.build(title: "Answer Title", content: "everything")
  # end

  it "displays the question" do
    question = Question.create!(:title => "what's good", :content => "In terms of food")
    question.answers.build(title: "Thai", content: "Thai Stick")
    assign(:question,
      question
      )

    assign(:answers,
      question.answers
      )


    render
    p "******rendered************"
    p rendered
    rendered.should have_content "Thai"

  end

  it "displays the answers for that question" do
  end


end
