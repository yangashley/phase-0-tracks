module Shout
	def yell_happily(words)
 		puts words + "!!!!!!! :)"
 	end

 	def yell_angrily(words)
    	puts words + "!!!" + " :("
 	end
end

class SportsFans
	include Shout
end

class Children
	include Shout
end

fan = SportsFans.new
fan.yell_happily("We won")
fan.yell_angrily("We lost")

kid = Children.new
kid.yell_happily("Time for recess")
kid.yell_angrily("Recess is over")





# module Shout
# def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#  def self.yell_happily(words)
#  	words + "!!!!!!! :)"
#  end
# end

# #Driver code
# Shout.yell_angrily("Why didnt you unload the dishwasher?")
# Shout.yell_happily("Thanks for cleaning the bathroom")

