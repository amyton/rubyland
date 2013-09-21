Question 
  @text
  @answers = []
  @difficulty
    # :easy, :medium, :hard

Answer
  @text
  @correct = true

class Question 
  def add_answer(text, correct)
    @answers << answer.new(text, correct)
  end

  def answer_correct?(answer)
    answer == correct_answer
  end

  private
  def correct_answer
    @answers.select { |a| a.correct }.first.text
  end
end

q = Question.new("Naughty method! Do you know which method has exhibitionist-like qualities?", :easy)
q.add_answer("attr_accessor", true)
q.add_answer("xxx.flash", false)
q.add_answer("public", false)
q.add_answer("gets.chomp", false)

puts q.text
answer = gets.chomp
if q.answer_correct?(answer)
  puts "correct!"
else
  puts "incorrect!"
end