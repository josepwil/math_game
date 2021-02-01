class Turn
  def initialize
    puts "----- NEW TURN -----"
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def question
    "What is #{@num1} + #{@num2}?"
  end

  def answer
    @num1 + @num2
  end
end