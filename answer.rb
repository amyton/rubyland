class Answer
  attr_accessor :text, :correct
  
  def initialize(text, correct)
    @text = text
    @correct = correct
  end
end