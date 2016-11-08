class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
#Deletes the reindeer from array, which will return the reindeer. Use that return value as an argument to insert it back in at the end of the array
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
	p @reindeer_ranking

	end

	def print
		puts "-------------"
		puts @age
		puts @gender
		puts @ethnicity
		puts @reindeer_ranking
		puts "-------------"
	end

end

# Bob = Santa.new
# Bob.speak
# Bob.eat_milk_and_cookies("chocolate chip cookie")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "masculine", "feminine", "gender non-conforming"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Irish", "Italian,", "Korean"]
age = (0..140).to_a
1000.times do |i|
	santas << Santa.new(example_genders.sample, example_ethnicities.sample, age.sample).print
end




# santas << Santa.new("masculine", "Flemish")
# p santas
# santas.each do |santa|
# 	santa.celebrate_birthday
# end
# p santas

# p santas[0].get_mad_at("Prancer")
# p santas[-1].gender = "PURPLE"
# p santas[-1].age
# p santas[-1].ethnicity




