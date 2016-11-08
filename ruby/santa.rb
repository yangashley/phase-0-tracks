class Santa

def initialize(gender, ethnicity)
	puts "Initializing Santan instance..."
	@gender = gender
	@ethnicity = ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
end

def speak
	puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie_type)
	puts "That was a good #{cookie_type}!"
end

end

Bob = Santa.new
Bob.speak
Bob.eat_milk_and_cookies("chocolate chip cookie")