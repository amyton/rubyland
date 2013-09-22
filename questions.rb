class Question 
  attr_accessor :text, :answers, :difficulty
  attr_accessor :easy, :medium, :hard

  def initialize(text, difficulty)
    @text = text
    @answers = []
    @difficulty = :easy, :medium, :hard

    puts text
  end

  # add answers to answers array
  def add_choices(text, correct)
    @answers.push(text, correct)
  end

  # Check to see if "answer" is the correct answer
  def answer_correct?(answer)
    answer == correct_answer
  end

  #
  #
  private
  def correct_answer
    @answers.select { |a| a.correct }.first.text
  end
  
end

q1 = Question.new("Naughty method! Do you know which method has exhibitionist-like qualities?", :easy)
q1.add_choices("attr_accessor", true)
q1.add_choices("xxx.flash", false)
q1.add_choices("public", false)
q1.add_choices("gets.chomp", false)


puts q1.text
answer = gets.chomp

if q1.answer_correct?(answer)
  puts "correct!"
else
  puts "incorrect!"
end


