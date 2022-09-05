require './playerClass'
require './questionClass'

player1 = Player.new('Alex')
player2 = Player.new('Bob')
question = Questions.new()

play = true;
currentPlayer = player1
while play do 

puts ("#{currentPlayer.printName}#{question.nextQuestion}")
answer = gets.chomp.to_i

if question.checkAnswer(answer)
  puts "Correct!"
else 
  puts "Incorrect..."
  currentPlayer.loseLife
end

if currentPlayer.getLives == 0
  break
end
puts "#{player1.printName}: #{player1.getLives}/3 Vs. #{player2.printName}: #{player2.getLives}/3"

if currentPlayer == player1
  currentPlayer = player2
elsif 
  currentPlayer == player2
  currentPlayer = player1
end

end

if player1.getLives == 0
  puts "#{player2.printName} wins! with a score of #{player2.getLives}/3"
else 
  puts "#{player1.printName} wins! with a score of #{player1.getLives}/3"
end