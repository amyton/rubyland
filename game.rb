class Game
  def initialize(questions)
    @questions = questions
    @easy = questions.select { |q| q.difficulty == :easy }
    @medium = questions.select { |q| q.difficulty == :medium }
    @hard = questions.select { |q| q.difficulty == :hard } 
  end

  def play
    questions = @easy
    q = questions.sample(1).first

    # Main game loop
    while q
      q.show_question
      q.show_choices

      user_answer = gets.chomp
      
      if q.answer_correct?(user_answer)
        questions.delete(q)

        if q.difficulty == :easy
          questions = @medium
        elsif q.difficulty == :medium
          questions = @hard
        end
      end

      q = questions.sample(1).first
    end

    puts "Congrats! You won!".color(:green)
  end
end