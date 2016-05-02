class Puppy
	def initialize
		puts "Initializing new puppy instance"
	end
	
	def fetch(toy)
		puts "I brought back the #{toy}!"
    	toy
	end

	def speak(integer)
		integer.times {puts "woof!"}
	end

	def roll_over
		puts "*roll over*"
	end

	def dog_years(human_years)
		human_years * 7
	end

	def sit
		puts "*sits*"
	end

end


justin = Puppy.new
justin.fetch("sexy")


class Cat
	def initialize
		puts "Initializing new cat instance"
	end

	def fetch(toy)
		puts "*Looks at you blankly*"
	end

	def roll_over
		puts "*Licks paw*"
	end
end

array = []	
50.times do
	array << Cat.new
end

array.each do |cat|
	cat.fetch('paper')
	cat.roll_over
end
