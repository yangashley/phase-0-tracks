# Method to create a list
# input: string of number then item separated by spaces (example: "carrots apples")
# Break apart string of items on the space
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
# IF there is a integer add it as the value of the new item
# First check if there is integer 
# IF not integer default would be 1
# output: finished list with added item and its quantity

# Method to remove an item from the list
# input: a string with the item to be deleted (bananas)
# steps: 
# Create a method that takes two parameters (hash and key)
# Check to see if item to be deleted is already in the list 
# Iterate through the hash to see if the item already exists 
   # IF the item exists, delete it
   # IF item doesn't exist, return a message that says "Item not found"
# output: revised list with item deleted

# Method to update the quantity of an item
# input: You passing in the shopping list, the item you want to update and the quantity. You are passing in a hash, a string and an integer.
# steps: We are going to create a method called update_quantity.
# Overide the value of the key by setting it equal to the new quantity. 
# IF item does not exist in the list don't add the item. We will create an if statement and the key is nil we won't update the hash. 
# output: The updated list with the new quantity.

# Method to print a list and make it look pretty
# input: Input the list
# steps: 
# Define a method called print_list
# Print "You shopping list:" to the console and a line separating the message from the list to make it user friendly
# Iterate through the hash to print the item followed by the quantity
# Print another line to separate the information to make the list reader friendly
# Call the method and pass in the list
# output: The list with items and quanitities printed in individual lines for reader friendliness starting with the message "Your shopping list:"

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

def delete_item(list, delete_item)
   list.each do |item, quantity|
       if list[item] == list[delete_item]
           list.delete(item)
       end
   end
   list
end

def update_quantity(list, item, quantity)
    if list[item] != nil
        list[item] = quantity
    end
    list
end

def print_list(shopping_list)
	puts "Your shopping list:"
	puts "------------------------"
	shopping_list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
	puts "------------------------"
end

inputted_list = "bananas apples cereal"

list = add_items(inputted_list)
new_item(list, "lemonade", 2)
new_item(list, "tomatoes", 3)
new_item(list, "onions", 1)
new_item(list, "ice cream", 4)
p list
delete_item(list, "lemonade")
p list
update_quantity(list, "ice cream", 1)
p list
print_list(list)


