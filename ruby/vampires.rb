puts "How many employees will be processed?"
employees = gets.chomp.to_i

employees.times do 

	puts "What is your Name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birth_year = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp
	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp
	result = ''
	if (age+birth_year == 2016 || age+birth_year == 2015) && garlic_bread == "yes"
		result = 'Probably not a vampire.'
	elsif !(age+birth_year == 2016 || age+birth_year == 2015) && garlic_bread == "no"
		result = 'Probably a vampire'
	elsif !(age+birth_year == 2016 || age+birth_year == 2015) && garlic_bread == "no" && insurance = "no"
		result = 'Almost certainly a vampire'
	else
		result = 'Results inconclusive'
	end

	if name == "Drake Cula" || name == "Tu Fang"
		result = 'Definitely a vampire'
	end
	puts result
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"