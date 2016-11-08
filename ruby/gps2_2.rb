# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
	#Break apart string of items on the space
# steps: 
  # Create an empty item array to hold items for list
  # Call each on the item array to turn each value into a key for the hash
  # set default quantity to 1
  # Use each to iterate through array to print the items to the console 	
# output: List will be a hash (items are keys, quantity is value)

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

inputted_list = "bananas tomatoes apples bread"

def add_items(inputted_list) 
	list = {}
	list_array = inputted_list.split(' ')
	
	list_array.each do |item|
		list[item] = [1]
		p list
	end
end

add_items(inputted_list)











