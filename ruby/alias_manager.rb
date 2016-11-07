=begin
Alias Manager

Ask user for first and last name
Create a variable that holds the last name and first name
Convert reversed name into an array of individual characters
Create a method that iterates through each character of the array:
	-If character is a lowercase vowels then it will become the next vowel in aeiou
	-If character is a uppercase vowels then it will become the next vowel in aeiou
	-If character is a lowercase consonant then it will become the next consonant
	-If character is a uppercase consonant then it will become the next consonant
	-Spaces should remain as spaces
Print the alias.
Save the inputted name (key) and alias name (value) in a hash. 
Print all inputted names and aliases 
=end

def name_changer(name_to_change)
vowel = "aeiou"
cap_vowel = vowel.upcase
consonant = "bcdfghjklmnpqrstvwxyz"
cap_consonant = consonant.upcase

#array to hold aliases
alias_database = [ ]
 
updated_name = []
name_to_change.map {|letter_in_name|
	if vowel.index(letter_in_name)
	next_vowel_index = vowel.index(letter_in_name) + 1
	next_vowel_value = vowel[next_vowel_index]
		if next_vowel_value
		updated_name << next_vowel_value
		else
			updated_name << "a"
		end
	elsif cap_vowel.index(letter_in_name)
	next_vowel_index = cap_vowel.index(letter_in_name) + 1
	next_vowel_value = cap_vowel[next_vowel_index]
		if 	next_vowel_value
		updated_name << next_vowel_value
		else
			updated_name << "A"
		end
	elsif cap_consonant.index(letter_in_name)
		next_cons_index = cap_consonant.index(letter_in_name) + 1
		next_cons_value = cap_consonant[next_cons_index]
		if next_cons_value
			updated_name << next_cons_value
		else
			updated_name << "B"
		end
	elsif consonant.index(letter_in_name)
		next_cons_index = consonant.index(letter_in_name) + 1
		next_cons_value = consonant[next_cons_index]
		if next_cons_value
			updated_name << next_cons_value
		else
			updated_name << "b"
		end
	else 
#Anything that is not vowel or consonant remains the same
		updated_name << letter_in_name
	end
}
final_alias = updated_name.join
alias_database << final_alias
puts "Your alias is: #{final_alias}."
p alias_database
return final_alias
end



loop do
puts "Please enter your first name:"
first_name = gets.chomp
	if first_name == "quit"
	break 
	end
puts "Please enter your last name:"
last_name = gets.chomp

user_name = [ ]
reverse_name = "#{last_name} #{first_name}"
#Convert reversed name into an array of characters, into a new array
user_name = reverse_name.chars

name_changer(user_name)

end
