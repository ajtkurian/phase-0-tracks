# Prompt user for all the information: client name, age, number of children, decor theme, budget, pets?
# save in its repsective keys in a has
# output hash
# Prompt user if changes have to be made
# convert input to hash using global sub to convert spaces into underscore
# change hash value given key
# display hash


hash = {}
puts "What is the Client's Name?"
hash[:client_name] = gets.chomp
puts "What is the Client's Age?"
hash[:age] = gets.chomp.to_i
puts "How many children does the client have?"
hash[:children] = gets.chomp.to_i
puts "What is the decor theme?"
hash[:decor_theme] = gets.chomp
puts "What is the budget?"
hash[:budget] = gets.chomp.to_i
puts "Does the client have any pets?"
input = gets.chomp.downcase
hash[:pets] = (input == 'yes' ? true : false)

puts hash

puts "Which field do you want to change?"
key = gets.chomp.gsub(/\s+/, "_").to_sym
puts "What value would you like to change it to?"
if hash[key].class == Fixnum
	hash[key] = gets.chomp.to_i
elsif hash[key].class == TrueClass || hash[key].class == FalseClass
	input = gets.chomp.downcase
	hash[key] = (input == 'yes' ? true : false)
else
	hash[key] = gets.chomp
end

puts hash
