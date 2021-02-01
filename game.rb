class Game
  def initialize
    puts "a game has started"
  end

  def play
    round()
  end

  def round 
    turn = Turn.new
    turn.question
    puts turn.answer
    response = gets.chomp.to_i
    if response == turn.answer
      puts "you are correct"
    else
      puts "you are wrong"
    end
  end
end