class Player
  attr_accessor :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def is_dead
    @lives <= 0
  end

  def new_question
    question = Question.new
    puts "#{@name}: #{question.present}"
    print "> "
    player_answer = gets.chomp.to_i
    if question.check_answer(player_answer)
      puts "Yes! You are correct"
    else
      puts "Seriously? No!"
      @lives -= 1
    end
  end
end
