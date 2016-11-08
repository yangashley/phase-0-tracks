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
# example ("milk" 2)
# input: item name and optional quantity
# steps: 
# Create a method that is going to take three parameters, the master list, the item and the quantity.
# to search the hash to see if one of the keys is equal to item.
# method to take your string and return true or fall 
# Make the new item a new key with default value of 1 and add it to the master list
# If there is a integer add it as the value of the new item
# First check if there is integer 
# If not integer default would be 1
# output: finished list with added item and its quantity

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

def add_items(inputted_list) 
      list = {}
   list_array = inputted_list.split(' ')
   
   list_array.each do |item|
       list[item] = 1
   end
   list
end

def new_item(list, item, quantity=1)
    if list[item] == nil
        list[item] = quantity 
    end
    list
end

inputted_list = "bananas tomatoes apples bread"

list = add_items(inputted_list)
new_item(list, "bananas", 5)
p list


