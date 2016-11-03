=begin
Alias Manager

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



user_name = [ ]
first_name = "Ashley"
last_name = "Yang"

#can also split LastnameFirstname into Lastname Firstname at the capital letter 
#only if it's a string using .split(/(?=[A-Z])/).join(' ')

reverse_name = "#{last_name} #{first_name}"
#Convert reversed name into an array of characters
reverse_name.scan(/./)
#Puts array of characters into a new array
user_name << reverse_name.scan(/./)
p user_name

#you cannot run .next on an array. so you made a string an arary
#you'll have to make the array back into the string to call .next
change_name = user_name.join

#new variable holding reversed name as a string to call .next
p change_name



def change_letter(name)
	index = 0
	while index < name.length
	if name[index] == "z"
  	name[index] = "a"
  	elsif name[index] == " "
  	else
  	name[index] = name[index].next!
  end
    index += 1
 end
 puts "#{name}"
end

puts change_letter(change_name)