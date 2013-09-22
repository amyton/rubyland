class Question 
  attr_accessor :text, :answers, :difficulty
  attr_accessor :choices

  def initialize(text, difficulty)
    @text = text
    @choices = []
    @difficulty = difficulty
  end

  # add choices to answers array
  def add_choices(text, correct)
    @choices << Answer.new(text, correct)
  end

  def show_question
    puts @text.color(:blue)
  end

  def show_choices
    @choices.each do |choice|
      puts choice.text.color(:yellow)
    end
  end

  # Check to see if (user) "answer" is the correct answer
  def answer_correct?(user_answer)
    if user_answer == correct_answer
      puts "correct!".color(:green)
      return true
    else
      puts "incorrect!".color(:red)
      return false
    end
  end

  # select the correct answer in the choices array.
  # the first add_choices is the correct one
  private

  def correct_answer
    @choices.select { |answer| answer.correct }.first.text
  end
end