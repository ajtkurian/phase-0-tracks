# module Shout
# 	def self.yell_angrily(words)
# 		words + '!!!' + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + '!!!' + " :)"
# 	end

# end

# puts Shout.yell_happily("Helloooo")
# puts Shout.yell_angrily("Helllloooo")



module Shout
	def yell_angrily(words)
		words + '!!!' + " :("
	end

	def yell_happily(words)
		words + '!!!' + " :)"
	end
end


class Dad
	include Shout
end

class Mom
	include Shout
end


dad = Dad.new
mom = Mom.new
dad.yell_happily("Good Job son")
dad.yell_angrily("Go to your room")
mom.yell_angrily("You're Grounded")
mom.yell_happily("I'm Proud of you")
