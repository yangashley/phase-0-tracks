=begin
Pseudocode 

-Create a class called Game
There will need to be a way to use the guess(a word) with the different methods

Method 1: Initialize instances of the game class
-input: A secret word that is a string (example: 'hello')
-steps:
	-The class will have attributes with values of the secret word, number of guesses, state of the game (whether it's over or not)
-output: Print out the message 'Starting game...'

Method 2: Check guesses against secret word (example player_guess = ['w', 'h', 'e', 'r', ''])
-input: the guess as an array of characters 
-steps:
	-Create an empty feedback array to store letters correctly guessed 
	-Iterate through each character in the guess array to see if it is in the secret word string
		-IF the character is in the secret word, it will be stored in the feedback array as itself
		-IF the character is not in the secret word, store '- ' instead
	-Return the array 
-output: feedback = ['w', _ _ 'r', _])

Method 3: Turn a guess into an array of characters
-input: A guess that is a string (example 'where')
-steps: 
	-Turn guess into an array of characters and set it equal to a variable so it can be used in other methods
	-Implement guessing method 
-output: an array (example player_guess = [''w', _ _ 'r', _])

User Interface: 
-The user has as many chances to guess as there are letters in the word (5 letters in secret word = 5 chances to guess)
-While the game is not over, ask for a guess
	-IF all guesses are used, game is over
	-IF secret word is correctly guessed, game is over
=end

class GuessingGame
	attr_reader :guess_count
#	attr_reader :is_over

	def initialize(secret_word)
		@secret_word = secret_word
		@guess_count = 0
#		@is_over = false
		puts "Guess the secret word..."
	end

	def guess_feedback(guess)
		feedback = [ ]
		@secret_word 
		
		guess.each {|char|
			if @secret_word.index(char)
				feedback << @secret_word[@secret_word.index(char)]	
			else 
				!@secret_word.index(char)  
				feedback << " _"
			end
		}
		feedback.join
	end

	def get_guess(player_guess)
		guess = player_guess.split(//)
		puts guess_feedback(guess)
	end

end

game = GuessingGame.new("dog")
game.get_guess("dam")



