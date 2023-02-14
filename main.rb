require './Classes/Players.rb'
require './Classes/Turns.rb'


player1 = Player.new("Player 1")


player2 = Player.new("Player 2")

current_player = player1


loop do 
  
  Turn.new(current_player)

  puts "P1: #{player1.points}/3 vs P2: #{player2.points}/3"

  if player1.points == 0 
    puts "----- GAME OVER -----"
    puts "Player 2 wins with a score of #{player2.points}"
    break
  elsif player2.points == 0
    puts "----- GAME OVER -----"
    puts "Player 1 wins with a score of #{player1.points}" 
    break
  end

  if current_player == player1
    current_player = player2
  else 
    current_player = player1
  end
end

puts "Good bye!"
