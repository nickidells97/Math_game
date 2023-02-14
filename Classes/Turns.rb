class Turn
  def initialize(player)

    var1 = rand(10)
    var2 = rand(10)

    puts '----- NEW TURN -----'
    puts "#{player.name}: What does #{var1} plus #{var2} equal?"
    answer = gets.chomp.to_i
    if answer == (var1 + var2)
      puts "YES! You are correct."
    else
      player.points -= 1
      puts "#{player.name}: Seriously? No!"
    end
  end
end 