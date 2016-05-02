class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		"Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		"That was a good #{cookie}!" 
	end

	def celebrate_birthday
		@age+=1
	end

	def get_mad_at(reindeer)
		if @reindeer_ranking.include?(reindeer)
			@reindeer_ranking.delete(reindeer)
			@reindeer_ranking << reindeer
		end
	end
end

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies('vanilla')

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[rand(7)])
end

100.times do
	rand_gender = rand(example_genders.length)
	rand_ethnicity = rand(example_ethnicities.length)
	santa = Santa.new(rand_gender, rand_ethnicity)
	santa.age = rand(141)
	puts santa.age, santa.ethnicity, santa.gender
end
