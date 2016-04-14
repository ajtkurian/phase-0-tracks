puts "What is your hamster name?"
hamster_name = gets.chomp
puts "How squeaky  is your hamster?(1 to 10)"
volume = gets.chomp.to_i
puts "What is your hamster fur color?"
color = gets.chomp

puts "Is a good candidate for adoption?"
adoption = gets.chomp
if adoption == "yes" 
 adoption = true
else 
    adoption = false
end

puts "What do you estimate his age to be?"
age = gets.chomp
if age == ""
    age = nil
end

puts "His name is : #{hamster_name}"
puts "His squeakiness is: #{volume} "
puts "His color is : #{color}"
puts "Good for adoption: #{adoption}"
puts "His age is : #{age}"