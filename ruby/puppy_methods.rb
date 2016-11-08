class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	integer.times {puts "Woof"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(integer)
  	dog_years = integer * 7
  	p dog_years
  end

  def sit
  	puts "*sits*"
  end

  def initialize
  	
  end

end

#Driver Code
meatball = Puppy.new
meatball.fetch("ball")
meatball.speak(4)
meatball.roll_over
meatball.dog_years(3)
meatball.sit
