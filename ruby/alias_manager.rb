=begin
Alias Manager

1.Ask user for first and last name
2. Create a variable that holds the last name and first name
3. Convert reversed name into an array of individual characters
4. Define what vowels and consonants are
5. Iterate through the array of characters to change the character to the next character 
	-Vowels become the next vowel in aeiou
	-Consonants become the next consonant
	-Spaces should remain as spaces
	-Letters need to keep their correct case
6. Print the alias.
7. Save the inputted name (key) and alias name (value) in a hash. 
 
Method to convert inputted string into array

Method to change a vowel to the next vowel
-If, elsif, else condition for edge cases
	-u should be a


Method to change a consonant to the next consonant
-If, elsif, else condition for edge cases
-Call .downcase on the character that will take .next so that it will change capital letters
	-z should be b

Method to swap first and last name:
-Set inputted first name and last name to an array
-Switch the position of first name and last name in the array

User Interface:
-Ask user for first name and last name

Store the Alias:
-Feed the fake names into a new array
=end


def name_changer(name_to_change)
vowel = "aeiou"
cap_vowel = vowel.upcase
consonant = "bcdfghjklmnpqrstvwxyz"
cap_consonant = consonant.upcase
 
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
puts "Your alias is: #{final_alias}."
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
