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