=begin
Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)
Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.
=end

def alias_maker(name)
	vowels = "aeioua"
	cap_vowels = vowels.upcase
	consonants = "bcdfghjklmnpqrstvwxyzb"
	cap_consonants = consonants.upcase
	updated_name = []
	
name.map {|letter|
	if vowels.index(letter)
		next_vowel_idx = vowels.index(letter) + 1
		updated_name << vowels[next_vowel_idx]
	#updated_name << vowels[vowels.index(letter) + 1]
	elsif cap_vowels.index(letter)
		next_capvowel_idx = cap_vowels.index(letter) + 1
		updated_name << cap_vowels[next_capvowel_idx]
	elsif consonants.index(letter)
		next_cons_idx = consonants.index(letter) + 1
		updated_name << consonants[next_cons_idx]
	elsif cap_consonants.index(letter)
		next_capcons_idx = cap_consonants.index(letter) + 1
		updated_name << cap_consonants[next_capcons_idx]
	else 
		updated_name << letter
	end
}
p updated_name.join
end

alias_database = {}

alias_database = {}

loop do
puts "Enter your first and last name or enter 'quit':"
user_input = gets.chomp
if !user_input.include?(" ") && user_input != "quit"
	puts "Please enter valid input."
	next
end
break if user_input == "quit"
full_name = user_input.split(' ')
reverse_name = full_name[1] + " " + full_name[0]
final_alias = alias_maker(reverse_name.chars)
alias_database[user_input] = final_alias
end

alias_database.each {|orig_name, new_alias|
	puts "#{orig_name} is actually #{new_alias}."
}