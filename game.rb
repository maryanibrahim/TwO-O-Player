require_relative 'player'
require_relative 'question'

class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start
    puts " #{@player_1.name} and #{@player_2.name}"
    until @player_1.is_dead || @player_2.is_dead
      turn
    end
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  def check_score
    if @player_1.is_dead
      winner(@player_2)
    elsif @player_2.is_dead
      winner(@player_1)
    end
  end

  def turn
    @player_1.new_question
    check_score
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
    @player_2.new_question
    check_score
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
    puts '---------NEW-TURN---------'
   
  end
end
