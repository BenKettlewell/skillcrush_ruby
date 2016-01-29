puts '### USE WHILE ###'

i=0
while i < 100
	i += 1
	if i % 3 == 0 and i % 5 != 0
		puts 'Fizz'
	elsif i % 5 == 0 and i % 3 != 0
		puts 'Buzz'
	elsif i % 3 == 0 and i % 5 == 0
		puts 'FizzBuzz'
	else
		puts i
	end
end

puts '### USE EACH ###'

list = Array(1..100)

list.each do |n|
	if n % 3 == 0 and n % 5 != 0
		puts 'Fizz'
	elsif n % 5 == 0 and n % 3 != 0
		puts 'Buzz'
	elsif n % 3 == 0 and n % 5 == 0
		puts 'FizzBuzz'
	else
		puts n
	end
end 