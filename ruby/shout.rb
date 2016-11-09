module Shout
def self.yell_angrily(words)
    words + "!!!" + " :("
  end

 def self.yell_happily(words)
 	words + "!!!!!!! :)"
 end
end

#Driver code
Shout.yell_angrily("Why didnt you unload the dishwasher?")
Shout.yell_happily("Thanks for cleaning the bathroom")

