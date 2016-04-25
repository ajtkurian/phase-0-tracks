def chipotle(*ingredients)
	puts "My favorite ingredients are #{ingredients}"
	yield(ingredients) if block_given?
	puts "This message is to display after block has run"

end

chipotle('guac', 'salsa', 'steak', 'rice') {|ingredients|  3.times { puts "At Chipotle I had #{ingredients} in my burrito"}}


array = ["bananas", "apples", "oranges", "grapes"]
hash = {
	cat: 'Max',
	dog: 'Milo',
	fish: 'Gregory',
	monkey: "Sarah"
}

array.each {|fruit| puts "I eat #{fruit}"}
hash.each {|animal, name| puts "My #{animal} is named #{name}"}
p array.map {|fruit| fruit.length > 6 ? "Ewww" : "Very Tasty" }
array.map! {|fruit| fruit.upcase}
p array
p hash.map {|animal, name| name.length<4 ? 'Pet' : 'Wild animal'}

letter_array = ["a", "b", "c", "d", "e"]

number_hash = {one: 1, two: 2, three: 3, four: 4}

puts letter_array.reject {|letter| letter < "c"}

puts number_hash.reject {|number, numeral| number.length < 4 && numeral < 2}

puts letter_array.select.with_index {|letter, index| index < 2}

puts number_hash.select {|number, numeral| numeral > 3}

puts letter_array.keep_if {|letter| letter > "b"}

puts number_hash.keep_if {|number, numeral| numeral * 2 > 5}
