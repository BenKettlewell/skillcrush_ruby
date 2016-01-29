puts "What is your birthday (xx/xx/xxxx without slash) ?"
birthday = gets


def sum_method(birthday)
	sum = birthday.split(//).map{|n| n.to_i}.inject{|sum,x| sum +x}
	puts sum
	if sum > 9 
		puts "Your sum of numbers has two digits. Let's sum them up."
		sum = sum.to_s.split(//).map{|n| n.to_i}.inject{|sum,x| sum+x}		
		puts sum
		if sum > 9 
			puts "Your sum of numbers has two digits. Let's sum them up."
			sum = sum.to_s.split(//).map{|n| n.to_i}.inject{|sum,x| sum+x}		
			puts sum
		end
	end
	return sum
end
	


def numerology_message(sum)
	case sum
	when  1
		message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when  2
		message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when  3
		message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three\'s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when  4
		message = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when  5
		message = "This is the freedom lover. The number five is an intellectual vibration. These are \'idea\' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when  6
		message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when  7
		message = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when  8
		message = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when  9
		message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else
		message = "error"
	end
	return message
end

sum = sum_method(birthday)
message = numerology_message(sum)
puts message