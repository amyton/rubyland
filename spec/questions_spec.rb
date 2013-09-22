require "rubygems"
require "bundler/setup"
require "rspec"
require_relative "../game"


describe Questions do
  let (:question) {Question.new}
  describe "add_answer" do  
    context "when adding answer choices to a question" do 
      it "adds answer choices to the question" do

        expect(question.add_answer).to eq (choice1, true)
        expect(question.add_answer).to eq (choice2, false)
        expect(question.add_answer).to eq (choice3, false)
        expect(question.add_answer).to eq (choice4, false)
      end
    end
  end

  describe "answer_correct?" do
    context "when the user's answer input is correct" do
      it "tells the user, 'correct!'" do

        expect(answer).to eq (correct)
      end
    end
  end
end