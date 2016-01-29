puts "what is your number? "
first_number = gets.to_i

#DEFINE METHOD
def always_three(number)
	number = (((number +5) * 2 - 4) / 2) - number
	number = number.to_s
end

#CALL METHOD
puts "Final number is always " + always_three(first_number)
