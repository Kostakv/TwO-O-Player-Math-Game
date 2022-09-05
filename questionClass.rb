class Questions 

  def nextQuestion
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "what does #{@num1} plus #{@num2} equal?"

  end

  def checkAnswer (value)
    @total = @num1 + @num2
    @value = value
    if (@value == @total)
      true
    else 
      false
    end
  end


end 

