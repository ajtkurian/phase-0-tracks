# Create party class
#  methods:
# 	beat_drop - number of times the beat drops can be entered
# 	now_playing - tells what song is playing right now_playing
# 	end_party - plays music that means everyone has to leave
#   attributes - food, people, and music at the party

class Party
	attr_accessor :food, :people  # all are invited as long as they bring food
	attr_reader :music  #No requests allowed

	def initialize
		@music =["My Boo - Ghosttown DJs"]
		@food = []
		@people = []
	end


	def beat_drop(num_of_times)
		num_of_times.times{puts "BWAAAAAHHH WUB WUB WUB WUB"}
	end

	def now_playing
		puts "Now Playing " + @music[0]
	end

	def end_party
		@music.unshift 'Closing Time - Semisonic'
		self.now_playing
	end
end

my_party = Party.new

puts "Welcome to the party! Name all that's in your party"
my_party.people = gets.chomp.split(',').map{|person| person.strip}  # deletes whitespace
puts "What food did you bring?"
food = gets.chomp.split(',').map{|person| person.strip} 
if food = []
	puts "You didn't bring anything? Go home you are uninvited."
else
	my_party.food = food
end
people_food_music = [my_party.people, my_party.food, my_party.music]

people_food_music.each {|item| puts item}

