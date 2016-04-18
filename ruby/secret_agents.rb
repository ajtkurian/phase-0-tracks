#Display what you want to get from the user
#Receive input and save it in variables
#write conditionals if the 'encrypt' or 'decrypt' is inputted

puts "Would you like to encrypt or decrypt?"
encrypt_or_decrypt = gets.chomp
puts "What is the password?"
password = gets.chomp

if encrypt_or_decrypt == "encrypt"
	puts encrypt(password)
elsif encrypt_or_decrypt == 'decrypt'
	puts decrypt(password)
end

def encrypt(string)
	counter = 0
	while counter < string.length
		if !(string[counter]==' ')
			if string[counter] =='z'
				string[counter]='a'
			else
				string[counter] = string[counter].next
			end	
		end
		counter+=1
	end
	string
end

def decrypt(string)
	abc = "abcdefghijklmnopqrstuvwxyz"
	counter = 0
	while counter < string.length
		if !(string[counter]==' ')
			string[counter]= abc[abc.index(string[counter])-1]
		end
		counter+=1
	end
	string
end

