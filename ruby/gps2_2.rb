# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split inputted string into array
  # set default quantity
  # Create hash with array as keys and quant as values
  # print the list to the console (call print method)
# output: hash run through the print method

# Method to add an item to a list
# input: item name and optional quantity
# steps: insert key into hash with quantity value
# output: hash

# Method to remove an item from the list
# input: item name to remove
# steps: Use item name as key to remove said key
# output: hash with removed item(s)

# Method to update the quantity of an item
# input:  item name to update and new quantity
# steps: use item name as key and use new quantity to update value
# output: hash with updated quantities

# Method to print a list and make it look pretty
# input: completed hash
# steps: iterate through hash and display in formatted string
# output: string

# def create_list(items)
#   item_array = items.split(' ')
#   item_list = {}
#   item_array.each do |item| 
#     item_list[item] = 1
#   end
#   return item_list
  
# end

# list = create_list("carrots apples cereal pizza")
# p list 

# def add_item(item_list, item, quantity = 1)
#   item_list[item] = quantity 
# end

# add_item(list, "milk")
# p list

# def remove_item(item_list, item)
#   item_list.delete(item)
# end

# remove_item(list, "pizza")
# p list 

# def update_item(item_list, item, quantity)
#   item_list[item] = quantity
# end

# update_item(list, "apples", 5)
# p list

# def print_list(item_list)
#   item_list.each do |item, qty|
#     puts "#{item} - #{qty}"
#   end
# end

# print_list(list)

# REFACTOR

def create_list(items)
  item_list = {}
  items.split(' ').each{ |item| item_list[item] = 1 }
  print_list(item_list)
end

def add_update_item(item_list, item, quantity = 1)
  item_list[item] = quantity 
end

def remove_item(item_list, item)
  item_list.delete(item)
end

def print_list(item_list)
  item_list.each { |item, qty| puts "#{item} - #{qty}" }
end

list = create_list("carrots apples cereal pizza")
p list 
add_update_item(list, "milk")
p list
remove_item(list, "pizza")
p list 
add_update_item(list, "apples", 5)
p list
print_list(list)


    # -What did you learn about pseudocode from working on this challenge?

    # pseudocode isn't meant to be perfect and can always be re-edited as the project changes

    # -What are the tradeoffs of using arrays and hashes for this challenge?

    # arrays can't handle data as well as hashes in terms of paired data sets

    # -What does a method return?

    # the last line or explicitly what was after the return value

    # -What kind of things can you pass into methods as arguments?

    # You can pass any object into methods weather they are (strings, fixnums, hashses, array, blocks)

    # -How can you pass information between methods?

    # Calling the other method and passing into a variable from the current method.

    # -What concepts were solidified in this challenge, and what concepts are still confusing?

    # Scope was solidified and understanding return values on ruby methods can be quite tricky.
