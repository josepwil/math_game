class Game
  attr_accessor :current_player
  def initialize
    @player_one = Player.new("Player 1")
    @player_two = Player.new("Player 2")
    @current_player = @player_one
    
    puts "Welcome #{@player_one.name} and #{@player_two.name} to a new game!"
  end

  def play
    while @player_one.lives > 0 && @player_two.lives > 0
      turn(@current_player)
    end   
  end

  def toggle_current
   if @current_player == @player_one
      @current_player = @player_two
   else
      @current_player = @player_one
   end
  end

  def score
    puts "P1: #{@player_one.lives}/3 vs P2: #{@player_two.lives}/3"
  end

  def winner
    if @player_one.lives == 0 || @player_two.lives == 0
      if @player_one.lives == 0
        puts "#{@player_two.name} wins with a score of #{@player_two.lives}/3"
      else
        puts "#{@player_one.name} wins with a score of #{@player_one.lives}/3"
      end    
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit
    else
      score
    end
  end

  def turn(player) 
    turn = Turn.new
    puts "#{player.name}: #{turn.question}"
    response = gets.chomp.to_i
    if response == turn.answer
      puts "#{player.name}: YES! You are correct."
    else
      puts "NOPE! You are wrong."
      player.lives -= 1
    end
    toggle_current
    winner
  end
end