  game.rb > game_spec = write test
  question class
    create new question
      question - MC
        how would this work?
        diffcult level woult be attribute of each question
        each question would have easy attribute, med attribute, hard attribute

        question class - have  question would have answer attribute, which would be array of other answer objects


        answer class - correct or incorrect




class Question
  @test 
  @answers = []
  @difficulty
    :easy, :medium

# creating a question
  Question.new("What's ruby?", :easy)
  q.add_answer("4", true) // because answer is an array - add books like on library
  q.add_answer("6", false)


  puts q.text (output the question, what's ruby?)
  answer = gets.chomp

  if q.answer_correct?(answer)
    puts "correct"
  else
    puts "Incorrect"
  end

  def add_answer(text, correct)  ++ test  - make sure when incorrect text, the answer array... when test answer correct, set up questions and answers. call correct answer with question..5
    @answers << 
      Answer.new(text, correst)
    end
  end

  def answer_correct?(answer) - check to see if this answer is the same as the correct answer ++ test
    answer == correct_answer // then it will return true
  end

  private ++ dont need to test
  def correct_answer
    @answers.select do |something|
      a.correct.first.text
    end // select always return out the array
  end

class Answer
  @text
  @correct
    true or flase





