=begin
The first version of this game (game.rb) was written to take guesses that were entire words, instead of guesses that were individual letters. This second version is written to have the player enter in a letter when they're guessing the secret word.

Pseudocode
# Have a secret word ('hello'). ecret word will be initalized with a new instance
# Method will turn secret word into an array so that it can be used as a look up for guesses
# Print secret word as _ _ _ _ _ for player to see
# Ask player to enter a word
# Check entered character against secret word
	# IF letter is in secret word, have it print where it is and unknown words will remain _ 
		# Show player updated word (example: _ _ l l _)
	# IF letter isn't in secret word, return secret word to show player feedback
		# Print a message to keep guessing
# Correct guesses will be stored in its own array and false guesses will be stored in another array so that we can control the counter 
	# IF the same letter is guessed twice, it won't count against the player)
# IF player guesses word correctly before they are out of guesses, print "You won!" and a message to show the secret word
# IF player hasn't guessed the word and runs out of guesses, game will end and print a message to show the secret word AND keep guessing will not print because they have no more turns
=end

class Game
	attr_reader :word

	def initialize(word)
	@guess_count = 0
	@word = word
	@correct_guesses = []
	@false_guesses = []
	@secret = []
	puts "Starting game..."
	end
	
	def check_secret
		@secret = @word.chars.map {|char|
			if @correct_guesses.include?(char)
				char
			else
				" _"
			end
		}
	end

	def print_secret
		puts "The secret word is #{@secret.join}."
	end
	
	def take_guess(letter)
		# return stops the method, precondition in the beginning 	
		return if @correct_guesses.include?(letter)||@false_guesses.include?(letter)
		@guess_count += 1
		if @word.index(letter) 
			@correct_guesses << letter
			true
		else
			@false_guesses << letter
			false
		end
	end
	
	def is_finished
		check_secret
		if @guess_count == @word.length 
			true
		elsif @word == @secret.join 
			puts "You won!"
			true
		else
			false
		end
	end
end

guessing_game = Game.new("puppy")
until guessing_game.is_finished
	guessing_game.print_secret
	puts "Enter a letter to guess the word:"
    player_guess = gets.chomp
	if !guessing_game.take_guess(player_guess) && !guessing_game.is_finished
		puts "Keep guessing..."
	end
end
puts "The game is finished. The secret word is #{guessing_game.word}."
