class Question 
  attr_accessor :text, :answers, :difficulty
  attr_accessor :easy, :medium, :hard
  attr_accessor :choices

  def initialize(text, difficulty)
    @text = text
    @choices = []
    @difficulty = :easy, :medium, :hard
  end

  # add choices to answers array
  def add_choices(text, correct)
    @choices.push(text, correct)
  end

  def show_choices
    @choices.text do |choice|
        puts choice.text
    end
  end

  # select the correct answer in the choices array.
  # the first add_choices is the correct one
  private
  def correct_answer
    @choices.select { |answer| answer.correct }.first.text
  end
end

# Check to see if (user) "answer" is the correct answer
def answer_correct?(user_answer)
  if user_answer == correct_answer
    puts "correct!"
  else
    puts "incorrect!"
  end
end

q1 = Question.new("Naughty method! Do you know which method has exhibitionist-like qualities?", :easy)
q1.add_choices("attr_accessor", true)
q1.add_choices("xxx.flash", false)
q1.add_choices("public", false)
q1.add_choices("gets.chomp", false)


puts q1.text
puts q1.choices

user_answer = gets.chomp



------
questions = {
  easy: {
    question: "What is ",
    answers: [
      ["red", true],
      ["blue", false],
      ["yellow", false],
      ["green", false],

    ]
  }
}



