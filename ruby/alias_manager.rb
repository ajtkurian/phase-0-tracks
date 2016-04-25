#set up arrays for vowels and consonants
#Split the name and switch the names in an array
#Find each letter in their respective vowel or consonant array and output the next index
#Perform this operation for all letters in the array and join array into string
#Output said string


def alias_name(input)
	name_array = input.name_split_switch
	name_array.each  {|n| n.length.times {|i| n[i] = next_letter(n[i])}}
	name_array.join(" ")
end

def next_letter(letter)
	vowels = ['a',"e", "i", "o", "u"]
	consonants = ('a'..'z').to_a.reject{|letter| vowels.include?(letter)}

	letter_group = vowels.include?(letter.downcase) ? vowels : consonants
	letter.next_object_in_array(letter_group)
end

class String
	# add my own methods to the String class so I can call them on my own terms
	def isCapitalized? 
		self == self.upcase
	end

	def next_object_in_array(array)
		next_idx = (array.index(self.downcase) + 1) % array.length
		self.isCapitalized? ? array[next_idx].upcase : array[next_idx]
	end

	def name_split_switch
		name = self.split(" ")
		name[0], name[1] = name[1], name[0] if name.length == 2
		name
	end
end

name_hash = {}
while true
	puts "Type in name to convert. Type 'quit' to exit."
	name = gets.chomp 
	break if name == 'quit'
	name_hash[name] = alias_name(name)
	puts name_hash[name]
end
name_hash.each{|n, a| puts "#{a} is really #{n}"}

