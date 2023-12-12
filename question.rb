class Question
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def present
    "What does #{@number1} + #{@number2} equal?"
  end

  def check_answer(answer)
    answer == @answer
  end
end
