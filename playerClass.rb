#Player class, each player has a name, and lives defaulted to 3.

class Player 
  def initialize (n) #String for name of the player
    @name = n
    @lives = 3
  end 

  def printName
    @name
  end

  def getLives 
    @lives
  end 

  def loseLife
    @lives = @lives - 1
  end
end 

