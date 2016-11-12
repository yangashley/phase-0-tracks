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
	attr_accessor :guess_count, :is_over, :guess, :secret_array

	def initialize(secret_word)
		@secret_word = secret_word
		@secret_array = []
		@guess_count = 0
		@is_over = false
		@guess = ""
		puts "Guess the secret word..."
	end

	def get_secret(secret_word)
		secret_array = secret_word.split(//)
	end
	
	def get_guess(player_guess)
		guess = player_guess
	end
	
	def guess_feedback(secret, guess)
		feedback = [ ]
		guess 
		
		secret.each {|char|
			if guess.index(char)
				feedback << guess[guess.index(char)]	
			else 
				!guess.index(char)  
				feedback << " _ "
			end
		}
		feedback.join
	end
end



#User Interface

secret = "cog"
game = GuessingGame.new(secret)
guesses_db = []

until game.guess_count == secret.length  
puts "Enter a guess:"
player_guess = gets.chomp

game.get_secret(secret)
game.get_guess(player_guess)
guesses_db << game.get_guess(player_guess)
secret_word = game.guess_feedback(game.get_secret(secret), game.get_guess(player_guess))
	if guesses_db[-1] == guesses_db[-2]
		game.guess_count = game.guess_count - 1 
	end
	if game.get_guess(player_guess) != secret 
		if game.guess_count == secret.length - 1
			puts "You're out of guesses. The secret word is #{secret}."
			break
		end
		puts  "The secret word is #{secret_word} ...keep guessing"
	end
	
	if game.get_guess(player_guess) == secret 
		game.is_over == true
		puts "Nice job! You guessed the secret word: #{secret}!"
		break
	end
	game.guess_count += 1 
end
