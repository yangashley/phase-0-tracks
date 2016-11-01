=begin

-Create empty hash for storing user data
-Print questions one at a time for user to answer
-Convert user input to appropriate data type
	-Take converted data and store as values for keys
-Print hash out to screen when all questions answered
-Prints "Do you have any updates to the form? Type 'yes' if you have updates. If not, type 'none'."
	-If yes, print questions one at a time for user to answer
		-Print individual questions for user to complete
		-Convert user input to appropriate data type
		-Take converted data and store as values for keys
	-If none, print hash and exit

=end


client_info = {
	client_name: "",
	client_age: "",
	children: "",
	decor_theme: "",
	num_rooms: "",
	fave_color: "",
	electrical_work: ""
}

puts "Client's name:"
name = gets.chomp
puts "Client's age:"
age = gets.to_i
puts "Number of children:"
num_children = gets.to_i
puts "Decor theme:"
decor = gets.chomp
puts "Number of rooms to design:"
rooms = gets.to_i
puts "Client's favorite color:"
color = gets.chomp
puts "Will electrical work be involved (true/false):"
electrical = gets.chomp

client_info[:client_name] = name
client_info[:client_age] = age
client_info[:children] = num_children
client_info[:decor_theme] = decor
client_info[:num_rooms] = rooms
client_info [:fave_color] = color
client_info [:electrical_work] = electrical

puts client_info

client_name_array = []
client_name_array << name

puts "Would you like to update any of the information? (yes/no)"
update = gets.chomp

if update == 'yes'
	puts "Client's name:"
	name = gets.chomp
	puts "Client's age:"
	age = gets.to_i
	puts "Number of chidlren:"
	num_children = gets.to_i
	puts "Decor theme:"
	decor = gets.chomp
	puts "Number of rooms to design:"
	rooms = gets.to_i
	puts "Client's favorite color:"
	color = gets.chomp
	puts "Will electrical work be involved (true/false):"
	electrical = gets.chomp
	client_name_array << name
elsif update == 'no'
puts "#{name}'s information has been saved."
end

puts client_info