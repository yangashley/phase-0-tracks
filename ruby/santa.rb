class Santa

def speak
	puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie_type)
	puts "THat was a good #{cookie_type}!"
end

def initialize
	puts "Initializing Santan instance..."
end

end

Bob = Santa.new
Bob.speak
Bob.eat_milk_and_cookies("chocolate chip cookie")